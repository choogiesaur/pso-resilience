import numpy as np
with open ('fogentry.dat', 'rb') as fd:
	a = fd.read()

# print(a)
# swap_data = bytearray(a)
num = np.array(a)
num_swap = num.byteswap(True)

print("Numpy array: \n", num)
print("Byteswapped array: \n", num_swap)

new_file = open("fogentry.MOD.dat", "wb")
new_file.write(num_swap)