# Baza de Date Relationale

Cuprins:
- Considerații generale
- Relații, domenii, atribute, schema unei relații
- Operații informatice și booleene
- Constrângeri
- Indexarea relațiilor
#### Considerații generale

#### Structura relațională a datelor
Datele sunt organizare sub forma unui tabel
Elementele esențiale ale unei relații:
- domeniu - setul de valori posibile
- atribut - coloană a tabelului, fiecare având un domeniu specific
- tuplu - un rând al tabelului, reprezentând o înregistrare unică
- schema unei relații - lista de atribute și domeniilor
Modelul relational a fost propus de Codd si se bazeaza pe teoria matematica a relatiilor.
O repatie r pe multimile *D1, D2,...., Dn* este o submultime a produsului cartezian D1', D2',...Dn' este o multime de tupluri.

#### Operatii informatice si boolene
Operatiile asupra tuplurilor unei ralatii:
- Adaugarea(inserarea): Introduce un nou tuplu
- Stergere(delete): Elimina un tuplu existent
- Modificare(update):Schimba valoarea unor atribute
Operatii boolene asupra relatiilor:
- Reuniunea(union):Combinatia tuturor tuplurilor din doua relatii
- Diferenta(minus):Tuplurile care apar intr-o relatie dar nu in cealalta
- Intersectie(intersect):Tuplurile comune celor doua relatii
- Produs Cartezian(Cross join):Combina fiecare tuplu dintr-o relatie cu toate tuplurile din cealalta
#### Constrangeri de integritate
Constrangerile de integritate asigura consistenta datelor
**Tupluri principale de integritate:**
- Integritatea entitatii: Fiecare tuplu trebuie sa aiba o cheie primara unica
- Integritatea referentiala: Cheile externe trebuie sa corespunda unor valori existente
- Integritatea domeniului: Valorile atribuite trebuie sa fie conforme cu tipul de date definit
- Integritatea personalizata: Reguli suplimentare definite de utilizator.
Unicitatea cheii: cheia primara trebuie sa fie unica si minimala
- integritatea entităţii - atributele cheii primare trebuie să fie diferite de valoarea null, deoarece unicitatea cheii impune ca la încărcarea unui tuplu, valoarea cheii trebuie să fie cunoscută pentru a putea verifica dacă tuplul figureză deja în baza dedate.
- integritatea referirii - într-o relaţie r1 care referă o relaţie r2 valorile cheii externe să figureze printre valorile cheii primare din relaţia r2 sau să fie null.
#### Indexarea Relatiilor
Indexurile permit acces rapid la date
**Tipuri de indexuri:**
- Index Primar: Stabilit de cheia primara
- Index Secundar: Creaza cai alternative de acces la date
**Avantaje ale indexarii:**
- Reduce timpul de cautari in baze mari de date 
- Optimizeaza interogarea prin metode avansate de acces
În general, operaţiile de căutare, inserare şi ştergere a elementelor într-o mulţime se
execută mai rapid dacă elementele mulţimiisunt reprezentate printr-o colecţie ordonată. Astfel
se ajunge la situaţia că, deşi o relaţie nu presupune ordonarea tuplurilor sale, pentru accelerarea
operaţiilor de căutare, inserare şi ştergere, se folosesc colecţii ordonate, ca de exemplu arbori
binari ordonaţi sau tabele de dispersie (hash table).