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

# Given file pointer, parse the header entries (0x30 bytes each) at beginning of file
def parse_headers(fp):

    # Get size by seeking end and capturing current position
    fp.seek(0, os.SEEK_END)
    size = fp.tell()
    fp.seek(0)

    headers = []
    while fp.tell() < size:
        # print(fp.tell())
        start_pos = fp.tell()
        # total size of each header entry is 0x30 including unused bytes
        data = fp.read(0x30)

        # '>'   = big endian (gamecube)
        # 32s   = char[] of size 32 = s[0]
        # I     = unsigned int      = s[1]
        # I     = unsigned int      = s[2]
        # 8s    = char[] of size 8  = s[3]
        s = struct.unpack('>32sII8s', data)

        name   = s[0].decode('ascii').rstrip(' \t\r\n\0')
        offset = s[1] * 2048 #change this; multiply by 2048 later
        length = s[2]
        unused = s[3]

        if offset < size:
            size = offset
            # print(size)

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
        # print(start_pos, header['filename'], int(header['offset']), header['length'])
    
    return headers

# Given file pointer and list of headers, parse the file contents
def parse_files(fp, headers):
    gsl = []
    for header in headers:
        fp.seek(header['offset'])
        chunk = fp.read(header['length'])
        gsl.append({'filename': header['filename'], 'bytes': chunk})

    return gsl

# Given filename, parse its header table and file contents
def gsl_parse(filename):
    
    if not os.path.exists(filename):
        return None

    with open(filename, 'rb') as fp:    
        headers = parse_headers(fp)
        files   = parse_files(fp, headers)

        # for item in files:
        #   print(item['filename'])
        # if headers[0]['offset'] != 12288:
        # print(filename, ": ", len(files))
        # print("Start of first file: ", headers[0]['offset'])
        return files

def export_file(file_dict, directory):
    full_path = os.path.join(directory, file_dict['filename'])

    with open(full_path, 'wb') as f:
        f.write(file_dict["bytes"])

def unpack_gsl(filename, unpack_dir):

    # directory = filename.replace('.gsl', '')
    text_file = unpack_dir + '.txt'

    if not os.path.exists(unpack_dir):
        os.mkdir(unpack_dir)

    file_names = []
    with open(filename, 'rb') as fp:
        
        gsl = gsl_parse(filename)

        for file in gsl:
            file_names.append(file['filename'])
            export_file(file, unpack_dir)

    with open(text_file, 'w') as tx:
        for item in file_names:
            tx.write('%s\n' % item)

def pack_gsl():
    print()

# def find_and_print(folder, target):

#     for (root, dirs, files) in os.walk(folder):
#         for file in files:
#             if file.endswith('.gsl'):
#                 print(file)
#                 gsl_path = os.path.join(root, file)
#                 gsl_contents = gsl_parse(gsl_path)

#                 for item in gsl_contents:
#                     if target in item['filename']:
#                         print(file + '/' + item['filename'])

folder = 'C:\\Users\\choogie\\Desktop\\root'
# find_and_print('.', 'flower')
# find_and_print(folder, 'flower')

unpack_gsl('gsl_acave01.gsl', 'extracted_files')
