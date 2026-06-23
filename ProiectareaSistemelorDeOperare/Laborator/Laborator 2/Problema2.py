import random
with open("output.out","w") as fin:    
    for i in range(50):
        num = random.randint(0,2000000)
        fin.write(f"{str(num)}\n")
        print(num)
