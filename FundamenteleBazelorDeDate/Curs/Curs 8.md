## Structura Fizica a Bazelor de Date
### Structura Cursului
- Consideratii privind structura fisierelor
- Tipuri de organizare a fisierelor
- Metode de cautare in fisiere
- Memorarea inregistrarilor cu lungime variabila
### **Consideratii privind structura fisierelor**
Nivelul la care se face gestionarea informatiilor de catre SGBD-urile actuale este cel de fisiere.
Dupa continut, fisierele se impart in mai multe clase dintre care cel mai des utilizate sunt:
- Directoare;
- Date;
- Text;
- Cod sursa;
- Obiect (fisierele compilate);
- Executabil;
**Observatie:** 
1. Principalele caracteristicice definesc fiecare fisier sunt:
	- Numele fisierului;
	- Tipul fisierului; 
	- Lungimea;
	- Locul de memorare/cale;
	- Modul de acces;
	- Data creeri sau a ultimei modificari
2. Elementele componente ale unui fisier sunt inregistrarile. Structura ingregistrarilor este descrisa de formatul inregistrarii asociat fiecarui fisier.
3. Fiecarei informatii ii corespunde un tip, un domeniu de valori posibile,o lungime de reprezentare si o pozitie de inregistrare toate acestea definesc un cap al inregistrarii

Unitatea de transfer de informatii este blocul de memorie
**Observatie:** Un bloc are de obicei lungimea o putere a lui 2, cuprinsa intre 2^9 si 2^12 octeti
Operatiile curente cu un fisier se reduc de cele mai multe ori la 4 tipuri:
- Inserare; 
- Stergere;
- Modificare;
- Cautare;
Fiecari bloc i-se asociaza o adresa. Inregistrarile pot sa fie localizate in mai multe feluri:
- Prin adresa absoluta, pe mediul de memoare care se face indicand sectorul si adresa in sector a inceputului inregistrarii(metoda mai rar utilizata);
- Prin indicarea numarului asociat inregistrarii in cadrul inregistrarii;
- Prin indicarea blocului si adresei relative in bloc;
- Prin indicare distantei fata de inceputul fisierului, a inceputului inregistrarii;
**Observatie:** Referira inregistrarilor (pointeri la inregistrare) se pot face prin oricare din metodele de mai sus.
### Tipuri de organizare a fisierelor
In organizarea fisierelor se tine seama de mai multi factori, cum ar fi:
- Frecventa cu care se efectueaza anumite tipuri de operatii asupra fisierelor;
- Campurile indicate in operatiile de cautare;
- Relatia in care se afla inregistrarile cu alte informatii din SGBD;
Cele mai des utilizate tipuri de organizare a fisierelor sunt:
- Secventiale;
- Cu dispersie(hash);
- Index rar;
- Index dens;
- Structura de tip B-arbore;

**Fisierele secventiale** sunt simple, utilizare minima a spatiului dar are cautare lenta pentru fisierele mari, se foloseste doar daca fisierele sunt organizate dinamic si mici;
**Fisierele cu dispersie(hash)** se acceseaza usor, se utilizeaza la bazalele de date tip retea sau ierarhice;
**Indexare si Structura de tip B-arbore** acces rapid, spatiu suplimentar redus, index pentru fiecare inregistrare, eficienta pentru fisiere mari;
### Metode de cautare
- Indexari secundare;
- Cautare partiala a cheii;
- Cautari dupa intervalea(cereri dupa marime);
Nu toate cautarile din bazele de date se fac dupa cheia principala
Daca un atribut sau un grup de atribute apar des in cererile de cautare, atunci pentru acel atribut sau grup de atribute se construieste un index numit index secundarce permite accesul rapid la inregistrarile corespunzatoare valorilor date. In indexul secundar, inregistrarile sunt indicate fie prin pointeri la ele fie prin valorile cheilor principale.
**Observatie:** Referirea la inregistrari prin pointeri are avantajul accesului mai rapid dar produce constrangeri din cauza fixarii inregistrarilor pe locul pe care au fost introduse. 

Indicarea partiala a cheii de cautare reprezinta metoda indexilor de cautare multipilii. Functioneaza astfel: din indexii asociati atributelor a1, a2...ak se determina multimile de pointeri p1,p2,...,pk ale pointerilor catre inregistrarilor multimilor s1,s2,..,sk si daca acestea nu au multe, elemente se face intersectia lor in memoria principala. O varianta presupune alegerea unui indice i pentru care multimea Si are cele mai putine elemente si apoi se verifica pentru aceste elemente daca indeplinesc si celelalte conditii, daca pointerii sunt la nivel de bloc, metoda intersectiei multimilor de pointeri poate sa produca si elemente false si astfle trebuie facute verificari suplimentare. 
O alta metoda o reprezinta generalizarea fisierelor cu dispersie ce folosesc functii de dispersie partitionale

### Cazuri speciale de cautare
1. **Metoda spatiului** rezervat, aceasta metoda presupune o rezervare pentru numarul maxim de ocurente(gasiri) posibile pentru atributul sau grupul de atribute care se repeta
**Observatie:** Aceasta metoda se poate aplica in cazul in care numarul maxim de repetari ale grupului de atribute este destul de apropiat de numarul mediu de repetari, pentru utilizarea eficienta a spatiului de memorie alocat
2. **Metoda inlantuirii** aceasta metoda presupune memorarea grupurilor care se repeta intr-un fisiere separat astfel in fisierul initial se pune legatura la primul bloc din al doile fisier ce contine ocurente corespunzatoare acelei inregistrari, daca repetarile ocurentelor depasesc capacitatea unui bloc se folosesc blocuri suplimentare ce formeaza o lista cu legaturi
3. **Metoda mixta** ce ofera o combinatie dintre cele doua.
### Concluzii
Tipurile de organizare a fisierelor optimizeaza accesul si eficienta si implicit performanta bazelor de date.
Utilizarea indexarii si dispersiei creste performanta cautarilor in fisierele mari.
