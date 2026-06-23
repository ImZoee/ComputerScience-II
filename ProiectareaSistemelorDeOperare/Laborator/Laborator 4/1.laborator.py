import os
import shutil
# import os
# os.chdir("/Users/marius/Documents/Anul II")
# print(os.getcwd())

#Afiseaza ce se afla in folder
'''
import os
print(os.listdir()) #Afiseaza ce se afla in folder
raze = os.listdir
'''

#Parcurgerea recursiva a unui director
'''
import os
for root,dirs,files in os.walk("./folderDate"): 
    print(f"Director: {root}")
    print(dirs)
    for file in files:
        print(f"Fisier: {file}")
'''

#Creare Foldere
'''
os.mkdir("Legume")
print(os.listdir())
'''

#Sterge Foldere
'''
os.mkdir("Legume")
print(os.listdir())
with open("Legume/Test.txt","w") as fout:
    fout.write("Nota10")
os.rmdir("Legume") #nu se poate sterge deoarece are un fisier
print(os.listdir())
'''

#Stergere Foldere cu Fisiere
'''
os.mkdir("Legume")
print(os.listdir())
with open("Legume/Test.txt","w") as fout:
    fout.write("Nota10")
shutil.rmtree("Legume") #Sterge directorul chiar daca are fisiere
'''

#Redenumire Fisiere
'''
with open ("Date.txt","w") as fout:
    fout.write("Salut")
os.rename("Date.txt","info.txt")
print(os.listdir())
'''

#Mutare de fisiere
'''
os.mkdir("Folder")
os.rename("info.txt","./Folder/info1.txt")
'''

#Copiere Fisiere
'''
shutil.copy("./Folder/info1.txt","copie.txt")
'''

#Stergere Fisier
'''
os.remove("./Folder/info1.txt")
print(os.listdir("Folder"))
'''

#Informatii despre fisiere
'''
rez = os.stat("copie.txt")
print(rez)
#Accesare campuri
print(rez.st_mtime)
print(rez.st_size)
'''

#Lucru cu cai
#Impreunare foldere
'''
cale1 = "/Users/marius/Documents/Anul II"
cale2 = "/Users/marius/Desktop"
rez = os.path.join(cale1, cale2)
print(rez)
'''

#Separarea Cai
'''
split = "/Users/marius/Documents/Anul II/test.txt"
print(os.path.split(split))#-> tuplu "/Users/marius/Documents/Anul II","text.txt" adaugam un array [1] ca sa luam extenia
print(os.path.splitext(split))#-> "/Users/marius/Documents/Anul II","text.txt"

'''
#Existenta Fisierelor/Folderelor
'''
print(os.path.isfile("copie.txt"))
print(os.path.isdir("Folder1"))
print(os.path.exists("Folder1"))
'''