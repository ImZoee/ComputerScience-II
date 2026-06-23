1. **Setul de caractere:**
Java lucreaza in mod nativ folosind standardul **unicode** ce inlocuieste vechiul standard **asci** pentru reprezentarea caracterelor astfel setul asci devine sub set pentru unicode fiind posibila reprezentarea a mai mult de 256 de caractere (www.unicode.org)

2. **Cuvinte cheie, cuvinte rezervate:**
Cuvintele cheie sunt siruri de caractere rezervate pentru limbaj pentru uzul propriu.
**Observatii:** Niciun program nu poate sa utilizeze aceste cuvinte pentru un al scop decat cel definit de program.
Cuvintele rezervate nu au o semnificatie  anume in limbajul Java, insa nu pot fi folosite pe post de identificatori.
**Exemple de cuvinte cheie:** abstract, class,this,extends, boolean, implements, volatile, new, byte, synchronize,package, catch, return, interface, else, short.
**Exemple de cuvinte rezervate:** operator, cast, generic, vor.

3. **Indentificatorii:**
Indentificatorii Java sunt siruri de caractere literale si cifre unicode nelimitate care incep obligatoriu cu o litera.
**Observatii:** Se interzice folosirea unui cuvant cheie pe post de identificator.
Exemplu: f2, masina1, patru, sala.

4. Un literal este o valoare specificata in fisierul sursa pentru tipurile de date primitive sau sir de caractere. In limbajul Java exista 5 tipuri de literali: 
- Literali booleni(True/False), nu sunt cuvinte rezervate.
- Literali de tip caracter, acestia pot fi formulati prin incadrarea intre apostroful.
- Literali intregi, pot fi reprezentati in baza 10 implicite foloseste implicit foloseste baza de numeratie decimala
**Exemplu:** 15(decimala), 034(octala), 0x1c(hexadecimala)
**Observatii:** - Implicit un literal intreg este reprezentat pe 32 de biti, literalii flotanti reprezinta numere reale.
		   - Pentru ca o expresie sa fie interpretata ca un literal flotant ea trebuie sa unu din urmatoarele: 
			   -Punct decimal(3.1415926).
			   -Litera E sau e(4.Ex10).
			   -Subfixul F sau f indicand o reprezentare pe 32 de biti(4.65F).
			   -Subfixul D sau d indicand o reprezentare pe 64 de biti(123D).
Literalii sir de caractere consta in secvente de caractere "Hello World".

5. Separatorii sunt caractere folosite pentru a delimita diverse elemente(unitati lexicale).
**Observatii:** Separatorii contribuie si la construirea sintaxei limbajului. Separatorii fiind urmatorii: (, ),{, }, [, ], ;, :.

6. **Comentarii in java** 
Un comentariu este o secventa de caractere care exista in fisierul sursa care serveste numai la documentarea sau explicarea programului si nu afecteaza functionalitatea codului.
In Java exista 3 tipuri de comentarii:
- Comentarii care se intind pe mai multe linii:  /* ..... * /
- Comentarii pe mai multe linii care este generat automat de Java doc: /** ....... ** /
- Comentarii pe o singura linie care sunt valabile pe o singura linie: //

7. Operatorii reprezinta simboluri grafice pt operatiile elementare definite de limbajul Java. In ordine descrescatoare a precedentei avem urmatorii operatori elementari:
- Unari: ++, --, +-, ~, (, ).
- Aritmetici: +, -, /, %, * .
- Deplasare: <<, >>, >>>(logic).
- De comparere: <, >, <=, >=, &, == , !=.
- Pe bit: &, ^, /.
- Logici: &, |.
- Ternali: ?, :(conditional).
- Atribuire:  =, * =, +, -.
Observatii: Ordinea de evaluare a operatorilor intr-o expresie, este fixa astfel in totdeauna toti operantii sunt evaluati de la stanga la dreapta.

8. O variabila indentifica o zona de memorie  care poate stoca o valoare de un anumit tip.
Observatii: Exista cazul in care nu este permisa modificarea valorii variabilei caz in care devine variabila finala. Pentru a putea fi folosita in program o variabila trebuie sa fie declarata, declaratia trebuie sa specifice tipul valorilor care pot fi stocate in zona de memorie rezervata variabilei, de asemenea cu un nume pentru acea variabila, numele fiind un identificator Java.
O variabila de tip primitiv contine o singura valoare cu dimensiune si format corespunzator tipului de data.
In Java sunt urmatoarele tipuri de date primitive:
- Numere intregi 8 biti(intreg reprezentat pe 8 octeti).
- Short intreg scurt pe 16 biti.
- Int(intreg lung) 32 biti, complement fata de 2.
- Long(intreg lung) 64 biti, complement fata de 2.
Pentru numere reale:
- Float(virgula mobila simpla precizie 32biti).
- Fouble(virgula mobile dubla precizie 64biti).
Alte tipuri: 
- Char(caracter 16 biti cod unicode).
- Boolean(logic 2 valori True/False).

9. **Expresii, Instructiuni, Blocuri:**
Prin combinare literarilor cu variabile si operatori se formeaza fragmente de cod care efectueaza calcule si returneaza valori(expresii).
Anumite expresii se pot constitui ca unitati de executie complete(instructiuni) iar prin gruparea a mai multor instructiunui obtinem blocuri de cod.

10. Vectorii in Java sunt matrici dinamicer care stocheaza grupuri de elemente ca obiecte simple si le putem manipula prin diferite metode. Declarerea vectorului presupune definrea tipului elementelor si numele vectorului.
Tip [] nume; 
Tip nume [];
Instantierea vectorului reprezinta instantierea de alocare dinamica a memoriei si se realizeaza prin operatorului **new**.
Declararea poate fi combinata cu instantierea in cadrul unei singure instructiuni.
NumeVector = new Tip [Numar elemente].