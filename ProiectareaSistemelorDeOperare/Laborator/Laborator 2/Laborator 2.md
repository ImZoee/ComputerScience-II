#### Canalele de comunicare cu fisiere
1. citire(read) utilizeaza atributul "r" fin=open("inupt.in", "r").
2. scriere(write) utilizeaza atributul "w" fout=open("output.out", "w").
3. adaugare(append) utilizeaza atributul "u" fout=open("info.txt", "u").
#### Tipuri principale de fisiere:
- text(in mod implicit)
- binare(menita adaugarea utilizatorului "b").
1. READ
- Nu exista fisierul deschis-> EROARE
1. WRITE
- Exista fisierul(continutul este sters)
-  Nu exista fisierul(il creaza)
1. APPEND
- Exista fisierul(Continutul nu se pierde).
- Nu exista fisierul il creaza
#### Inchidere canal comunicatii
- fin.close()
- fout.close()
#### Pentru scrierea datelor
fout.write("Hello World")
```python
val=10
fout.write(val)=> EROARE
fout.write(str(val))=>CORECT
```

```python
fout.write(f"Am {val} ani");
#f= format
fout.write("Eu am" + str(val) + "ani")
```
#### Pentru citirea datelor
```python
d = fin.read()
#d este string
#50 60 70 11 date fisier
rez = d.split() #pentru spargerea lor si stocare
#Rezultat["50","60","70","11"]
l = fin.readline() # citeste decat prima linie
line = fin.readlines() #citeste toate liniile
```

```python
with open("output.out","w") as fin:
for i in range(51):
fin.write(f"{str(i)}\n")
```