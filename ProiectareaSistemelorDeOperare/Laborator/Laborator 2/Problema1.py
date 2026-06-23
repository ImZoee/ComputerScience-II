#Deschidere canal comunicatii in care sa scriem primele 50 de numere 
with open("output.out","w") as fin:
    for i in range(50):
        fin.write(f"{str(i)}\n")

with open("output.out","r") as fout:
    print(fout.read())