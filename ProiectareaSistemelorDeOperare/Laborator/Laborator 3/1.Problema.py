import struct
with open("numere.bin", "wb") as fin:
    for i in range(100):
        fin.write(struct.pack(">i", i))