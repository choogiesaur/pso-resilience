import os
import struct

# parse gsl archive and return list of files inside
# adapted from PSO Developers Wiki

def gsl_parse(filename):

    if not os.path.exists(filename):
        return None

    with open(filename, 'rb') as fp:

        fp.seek(0, os.SEEK_END)
        size = fp.tell()
        fp.seek(0)

        files = []
        gsl = []
        while fp.tell() < size:
            data = fp.read(0x28)
            # for gamecube (big endian): '>' before 32sII
            s = struct.unpack('>32sII', data)
            fp.read(0x08)

            name   = s[0].decode('ascii').rstrip(' \t\r\n\0')
            offset = s[1] * 2048
            length = s[2]

            if offset < size:
                size = offset

            if len(name) == 0:
                break

            file_dict = {'filename': name, 'offset': offset, 'length': length}
            files.append(file_dict)

        gsl = []
        for file in files:
            fp.seek(file['offset'])
            chunk = fp.read(file['length'])
            gsl.append({'filename': file['filename'], 'bytes': chunk})

        return gsl

def export_file(file_dict):
	with open(file_dict["filename"], 'wb') as f:
		f.write(file_dict["bytes"])

def unpack_gsl(gsl_list):
	for item in gsl_list:
		export_file(item)

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
gsl = gsl_parse('gsl_acave01.gsl')
# for item in gsl:
# 	print(item["filename"])
unpack_gsl(gsl)
