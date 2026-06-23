#### **Gestiunea memoriei externe**
Putem sa caracterizam memoria externa:
- Viteaza de transfer(este mai leanta decat memoria interna).
- Capacitate mare.
- Persistenta informatiei(memorie volatila).
- Acces concurent.
- Partitionarea memoriei.
Informatia este impartita in unitati informationale, acestea fiind **Fisierele** care se caracterizeaza prin colectii de informatii de acelas tip.
#### 1. **Numirea fisierelor**
- Nume.extensie(extensia este optionala, insa numirea sa este obligatorie).\\
- Case sensitive
#### 2. **Structura fisierelor**
- Sir de octeti.
- Colectie de inregistrari.
- Arbore(in care informatiile sunt organizate astfel in cat sa identificam o informatie dupa inregistrare).
#### 3. **Tipurile fisirelor**
1. Normale
2. Cataloage(Foldere, Directoare, Subdirectoare):
Pentru cataloage exista ierarhia, intr-un catalog putem avea alt catalog
UNIX-LIKE:
1. Speciale:
	- Caracter
	- Bloc
- ASCII(text)
- Binare
#### 4. **Accesul fisierelor**
- Secvential
- Aleatoriu
- EOF
#### 5. **Atributele fisierelor**
Unele fisiere au atribute speciale, precum sa fie readonly, data crearii, dimensiune, vizibilitate, pot fi doar executabile, aceste atribute sunt dependente de sistemul de operare.