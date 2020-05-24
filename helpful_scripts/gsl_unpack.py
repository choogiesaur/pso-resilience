import os
import struct

# library to parse gamecube .gsl archive
# adapted from PSO Developers Wiki

# struct fileheader_s {
#     uint8_t filename[32]; // 1 byte * 32 ASCII filename, does not have to be null-terminated
#     uint32_t offset;      // 4 byte * 1  offset in blocks
#     uint32_t size;        // 4 byte * 1  size in bytes
#     uint8_t _unused[8];   // 1 byte * 8
# };

# At least for gamecube:
# File contents seem to always start at 0x3000 or 12288 bytes
# Possibly saw one at 18432?? But never again?

# Given file pointer, parse all header entries (0x30 bytes each) at beginning of file
def parse_contents(fp):

    # Get size by seeking end and capturing current position
    fp.seek(0, os.SEEK_END)
    size = fp.tell()
    fp.seek(0)

    # Iteratively parse the header entries
    headers = []
    datas = []
    while fp.tell() < size:
        start_pos = fp.tell()

        # total size of each header entry is 0x30 including unused bytes
        data = fp.read(0x30)
        datas += data

        # '>'   = big endian (gamecube)
        # 32s   = char[] of size 32 = s[0]
        # I     = unsigned int      = s[1]
        # I     = unsigned int      = s[2]
        # 8s    = char[] of size 8  = s[3]
        s = struct.unpack('>32sII8s', data)
        # print(s)

        name   = s[0].decode('ascii').rstrip(' \t\r\n\0')
        offset = s[1] * 2048 #change this; multiply by 2048 later
        length = s[2]
        unused = s[3]

        if offset < size:
            size = offset

        # first entry with filename starting with null byte = end of header list
        if len(name) == 0:
            break

        # print(data)

        header = {
            'filename'  : name,
            'offset'    : offset,
            'length'    : length,
            'unused'    : unused
        }
        headers.append(header)
        # print(start_pos, header['filename'], int(header['offset']), header['length'])
    
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

def export_file(file_dict, directory):
    full_path = os.path.join(directory, file_dict['filename'])

    with open(full_path, 'wb') as f:
        f.write(file_dict["bytes"])

# given <filename> unpack contents to <unpack_dir>
def unpack_gsl(filename, unpack_dir):

    print("UNPACKING: "+filename+" TO: "+unpack_dir)

    text_file = unpack_dir + '.txt'

    if not os.path.exists(unpack_dir):
        os.mkdir(unpack_dir)

    with open(text_file, 'w') as tx:
        
        gsl = gsl_parse(filename)

        for file in gsl:
            tx.write('%s\n' % file['filename'])
            export_file(file, unpack_dir)

# pack contents of <unpack_dir> following order in <unpack_dir>.txt to <filename>
def pack_gsl(unpack_dir, filename):
    
    print("PACKING: " + unpack_dir + " TO: " + filename)

    # To adhere to file order within archive
    text_file = unpack_dir + '.txt'

    # if directory dont exit, quit
    if not os.path.exists(unpack_dir):
        return None

    with open(text_file, 'r') as tx:
        file_names = [line.strip('\n') for line in tx]

    contents = []
    offset   = 12288 #starting offset for files; investigate if there are other cases

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

            packed = struct.pack('>32sII8s', 
                h['filename'], 
                h['offset'], 
                h['length'], 
                h['unused'])

            header_section += packed
            print("HeaderEntryLength, HeaderSectionLength", len(packed), len(header_section))
            offset += h['length']
            if h['length'] % 2048 != 0:
                offset += 2048 - (h['length'] % 2048)

    
    h_len = len(header_section)

    # If header section less than 12288 bytes (0x3000) pad it to that size
    # Files start at that offset. Possibly not always the case, but all the
    # Gamecube files I've viewed are this way.
    if h_len % 12288 != 0:
        rem = 12288 - (h_len % 12288)

    padded_h = struct.pack(str(h_len+rem)+'s', header_section)
    print("orig header len:",len(header_section))
    print("pad header len:",len(padded_h))

    file_section = bytearray()
    for item in contents:
        size = len(item['bytes'])
        arr = bytearray(item['bytes'])

        # Pad file section to 2048 byte multiple
        if size % 2048 != 0:
            diff = 2048 - (size % 2048)

        padded = struct.pack(str(size+diff)+'s', arr)
        print("OrigFile/Padded: ", len(arr), len(padded))
        file_section += bytes(padded)

    print("final header section length", len(padded_h))
    print("final file section length: ", len(file_section))

    combined = padded_h + file_section
    print(len(combined))

    with open(filename, 'wb') as out:
        out.write(combined)

def find_and_print(folder, target):
    for (root, dirs, files) in os.walk(folder):
        for file in files:
            if file.endswith('.gsl'):
                gsl_path = os.path.join(root, file)
                gsl_contents = gsl_parse(gsl_path)

                for item in gsl_contents:
                    if target in item['filename']:
                        print(file + '/' + item['filename'])

# find_and_print('.', 'flower')
# find_and_print(folder, 'flower')

# unpack_gsl('gsl_acave01.gsl', 'extracted_files')
# pack_gsl('extracted_files', 'out.gsl')
