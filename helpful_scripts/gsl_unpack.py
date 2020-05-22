import os
import struct

# parse gsl archive and return list of files inside
# adapted from PSO Developers Wiki
def gsl_parse(filename):
 
    if not os.path.exists(filename):
        return None
 
    with open(filename, "rb") as fp:
 
        fp.seek(0, os.SEEK_END)
        size = fp.tell()
        fp.seek(0)
 
        files = []

        while fp.tell() < size:
            data = fp.read(0x28)
            s = struct.unpack('32sII', data)
            fp.read(0x08)
 
            name    = s[0].decode('ascii').rstrip(' \t\r\n\0')
            offset  = s[1] * 2048
            length  = s[2]
 
            if offset < size:
                size = offset
 
            if len(name) == 0:
                break
            
            file_dict = {
                "filename" : name,
                "offset" : offset,
                "length" : length
            }
            files.append(file_dict)
        
        return files
        
        # gsl = []
        # for file in files:
        #     fp.seek(file["offset"])
        #     bytes = fp.read(file["length"])
        #     gsl.append({
        #         "filename" : file["filename"],
        #         "bytes" : bytes
        #     })
 
        # return gsl

"""
Recursively parse all gsl archives in a directory structure
Print out contents whose name contains a keyword
EX: 'flower' for all or most textures relating to Lily enemies
"""
folder = 'root_folder_to_search'
target = 'flower'

for root, dirs, files in os.walk(folder):
    for file in files:
        if file.endswith(".gsl"):

            gsl_path = os.path.join(root, file)
            gsl_contents = gsl_parse(gsl_path)
            
            for item in gsl_contents:
                if target in item["filename"]:
                    print(file + '/' + item["filename"])
