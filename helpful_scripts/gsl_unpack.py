import os
import struct
import sys

# library to parse gamecube .gsl archive
# adapted from PSO Developers Wiki

# Structure of header entries: (gamecube version is Big Endian)
# struct fileheader_s {
#     uint8_t filename[32]; // 1 byte * 32 ASCII filename, does not have to be null-terminated
#     uint32_t offset;      // 4 byte * 1  offset in blocks
#     uint32_t size;        // 4 byte * 1  size in bytes
#     uint8_t _unused[8];   // 1 byte * 8
# };

# At least for gamecube:
# Header section seems to always end at 0x3000 or 12288 bytes and file section starts thereafter
# Possibly saw one end at 18432 bytes ?? Can't find it.

# Given file pointer, parse all header entries (0x30 bytes each) at beginning of file
def parse_contents(fp):

    # Get archive size by seeking end and capturing current position
    fp.seek(0, os.SEEK_END)
    size = fp.tell()
    fp.seek(0)

    # Iteratively parse the header entries
    headers = []
    while fp.tell() < size:
        start_pos = fp.tell()

        # total size of each header entry is 0x30 including unused bytes
        data = fp.read(0x30)

        # '>'   = big endian (gamecube)
        # 32s   = uint8_t[32]   = s[0]
        # I     = uint32_t      = s[1]
        # I     = uint32_t      = s[2]
        # 8s    = uint8_t[8]    = s[3]
        s = struct.unpack('>32sII8s', data)

        name   = s[0].decode('ascii').rstrip(' \t\r\n\0')
        offset = s[1] * 2048 # offset is stored in 'blocks' which 2048 bytes long
        length = s[2]
        unused = s[3]

        if offset < size:
            size = offset

        # first entry with filename starting with null byte = end of header list
        if len(name) == 0:
            break

        header = {
            'filename'  : name,
            'offset'    : offset,
            'length'    : length,
            'unused'    : unused
        }
        headers.append(header)
    
    contents = []
    for header in headers:
        # go to offset specified in current header entry
        fp.seek(header['offset'])

        # read number of bytes specified by file length in header
        chunk = fp.read(header['length'])

        # add item to contents array
        contents.append({'filename': header['filename'], 'bytes': chunk})

    return contents

# Given filename, parse its header table and file contents
def gsl_parse(filename):
    
    if not os.path.exists(filename):
        return None

    with open(filename, 'rb') as fp:    
        contents = parse_contents(fp)
        return contents

# Given a name:bytes file_dict, output a file
def export_file(file_dict, directory):
    full_path = os.path.join(directory, file_dict['filename'])

    with open(full_path, 'wb') as f:
        f.write(file_dict["bytes"])

# Given <filename> unpack contents to <unpack_dir> & write contents to <unpack_dir>.txt
def unpack_gsl(filename, unpack_dir):

    print("unpacking: " + filename + " to: " + unpack_dir)

    text_file = unpack_dir + '.txt'

    if not os.path.exists(unpack_dir):
        os.mkdir(unpack_dir)

    with open(text_file, 'w') as tx:
        
        contents = gsl_parse(filename)

        for file in contents:
            name = file['filename']
            tx.write('%s\n' % name)
            print(os.path.join(unpack_dir, name))
            export_file(file, unpack_dir)

# pack contents of <unpack_dir> to <filename> following order in <unpack_dir>.txt
def pack_gsl(unpack_dir, filename):
    
    print("packing: " + unpack_dir + " to file: " + filename)

    # Text file with list of contents
    text_file = unpack_dir + '.txt'

    # Needs both directory and text file to properly order contents
    if not os.path.exists(unpack_dir) or not os.path.exists(text_file):
        print("unpacked directory or text file does not exist.")
        return None

    with open(text_file, 'r') as tx:
        file_names = [line.strip('\n') for line in tx]

    contents = []
    offset   = 12288 # starting offset for files; investigate if there are other cases

    header_section = bytearray()
    for item in file_names:
        path = os.path.join(".", unpack_dir, item)
        with open(path, 'rb') as f:
            # read file to bytes
            raw_bytes = f.read()

            # add item in contents list
            contents.append({'filename': item, 'bytes': raw_bytes})

            # construct dictionary for header entry
            h = {
                'filename': bytes(item, "ascii"),
                'offset'  : int(offset / 2048),
                'length'  : len(raw_bytes),
                'unused'  : bytes([0] * 8)
            }

            # pack the dictionary to 48 raw bytes, this is one header entry
            packed = struct.pack('>32sII8s', 
                h['filename'], 
                h['offset'], 
                h['length'], 
                h['unused'])

            # append the header entry bytes to the header segment
            header_section += packed

            # increment offset by length of curr file then pad to multiple of 2048
            offset += h['length']
            if h['length'] % 2048 != 0:
                offset += 2048 - (h['length'] % 2048)

    h_len = len(header_section)
    print("orig header len:", h_len)

    # If header section less than 12288 bytes pad it to that size or next multiple.
    # Files start at that offset (0x3000). Possibly not always true, 
    # but all the Gamecube files I've viewed are this way.
    if h_len % 12288 != 0:
        rem = 12288 - (h_len % 12288)

    # pack the header into bytes with calculated padding
    header_format = str(h_len+rem)+'s'
    padded_header = struct.pack(header_format, header_section)

    # align files to block size and append to file section
    file_section = bytearray()
    for item in contents:
        size = len(item['bytes'])
        arr  = bytearray(item['bytes'])

        # Pad file section to 2048 byte multiple
        if size % 2048 != 0:
            diff = 2048 - (size % 2048)

        format_str = str(size+diff)+'s'
        padded = struct.pack(format_str, arr)
        # print("OrigSize/PaddedSize: ", len(arr), len(padded))
        file_section += bytes(padded)

    print("final header section length", len(padded_header))
    print("final file section length: ", len(file_section))

    combined = padded_header + file_section
    print("final archive size:", len(combined))

    with open(filename, 'wb') as out:
        out.write(combined)
        
# Get all files with .gsl extension and search contents for a keyword
def find_and_print(folder, target):
    for (root, dirs, files) in os.walk(folder):
        for file in files:
            if file.endswith('.gsl'):
                gsl_path     = os.path.join(root, file)
                gsl_contents = gsl_parse(gsl_path)
                for item in gsl_contents:
                    if target in item['filename']:
                        print(file + '/' + item['filename'])

# parse archive and list contents
def list_contents(filename):
    contents = gsl_parse(filename)
    for item in contents:
        print(item['filename'])


# usage help screen
def print_usage():
    print("Usage:\n")
    print("# Unpack .gsl archive to folder/textfile pair")
    print("python gsl.py unpack <input_file> <unpack_dir>\n")
    print("# Pack folder/textfile pair to .gsl archive")
    print("python gsl.py pack <unpacked_dir> <out_file>\n")
    print("# Search all gsl archives in directory for contents with keyword in filename")
    print("python gsl.py find <directory> <keyword>\n")
    print("# List contents of an archive")
    print("python gsl.py list <input_file>\n")
    return

def main():

    # print(len(sys.argv))
    if len(sys.argv) <= 2:
        print_usage()
        return
    if sys.argv[1] == 'pack':
        if len(sys.argv) != 4:
            print("Invalid number of arguments for pack.")
            return

        unpacked_dir = sys.argv[2]
        out_file     = sys.argv[3]

        if not os.path.exists(unpacked_dir):
            print("<unpack_dir> does not exist.")
        else:
            pack_gsl(unpacked_dir, out_file)
        return

    elif sys.argv[1] == 'unpack':
        if len(sys.argv) != 4:
            print("Invalid number of arguments for unpack.")
            return

        input_file = sys.argv[2]
        unpack_dir = sys.argv[3]

        if not os.path.exists(input_file):
            print("<input_file> does not exist.")
        else:
            unpack_gsl(input_file, unpack_dir)
        return

    elif sys.argv[1] == 'find':
        if len(sys.argv) != 4:
            print("Invalid number of arguments for find.")
            return

        directory = sys.argv[2]
        keyword   = sys.argv[3]

        if not os.path.exists(directory):
            print("<directory> does not exist.")
        else:
            find_and_print(directory, keyword)
        return

    elif sys.argv[1] == 'list':
        if len(sys.argv) != 3:
            print("Invalid number of arguments for list.")
            return
        
        input_file = sys.argv[2]
        if not os.path.exists(input_file):
            print("<input_file> does not exist.")
        else:
            list_contents(input_file)
        return

    else:
        print_usage()
        return

if __name__ == "__main__":
    main()

### Example of unpack, pack ###
# unpack_gsl('gsl_acave01.gsl', 'extracted_files')
# pack_gsl('extracted_files', 'out.gsl')
# find_and_print('.', 'flower')
