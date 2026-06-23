import struct
import random

with open("output.bin","wb") as fin:
    for i in range(100):
        num=random.randint(0, 2000000000)
        fin.write(struct.pack("I", num))
