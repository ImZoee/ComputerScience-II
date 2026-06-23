## 1. Structura unui compilator - definire pe scurt

**Intrebare:** Ce este un compilator si care este structura lui generala?

**Raspuns:**

Un **compilator** traduce un program scris intr-un limbaj de nivel inalt, cum ar fi FORTRAN, PASCAL, C, C++ sau JAVA, intr-un limbaj masina. Compilatorul primeste la intrare un **program sursa** si furnizeaza la iesire un **program obiect echivalent** si un fisier de erori.

Traducerea programului sursa in program obiect se face in mai multe faze:

1. **Analiza lexicala** - grupeaza caracterele programului in subsiruri numite **atomi lexicali**: cuvinte cheie, operatori, constante, identificatori. Spatiile care separa atomii lexicali sunt eliminate.
2. **Analiza sintactica** - preia sirul de atomi lexicali si depisteaza structuri sintactice precum expresii, liste, instructiuni si proceduri, plasandu-le intr-un arbore sintactic.
3. **Analiza semantica** - imbogateste arborele sintactic prin informatii suplimentare introduse in tabela de simboluri si conduce generarea codului intermediar. O componenta importanta este verificarea tipurilor.
4. **Generarea codului intermediar** - produce un sir de instructiuni simple, cu format fix. Operatiile sunt apropiate de cele ale calculatorului, iar ordinea instructiunilor respecta ordinea executiei.
5. **Optimizarea codului** - elimina redundantele, calculele inutile si variabilele inutile pentru a obtine o executie mai eficienta.
6. **Generarea codului obiect** - selecteaza locatiile de memorie si translateaza codul intermediar intr-o secventa de instructiuni masina.
7. **Gestiunea tabelei de simboluri** - inregistreaza identificatorii folositi in programul sursa si colecteaza atributele lor: tip, memorie alocata, parametri, mod de transmitere etc.
8. **Tratarea erorilor** - include proceduri activate cand este depistata o greseala. Utilizatorul primeste un mesaj de eroare, iar compilarea trebuie sa continue cel putin pentru detectarea altor erori.

**Sursa in curs:** Curs 6, II.1.1. Structura unui compilator, pp. 81-85.

---

## 2. Gramatici - definitie, derivare, limbaj generat, clasificarea Chomsky

**Intrebare:** Ce este o gramatica formala, ce inseamna derivare si ce este limbajul generat de o gramatica?

**Raspuns:**

O **gramatica** este un sistem:

`G = (N, Σ, P, S)`

unde:

- `N` este alfabetul neterminalelor; elementele sale se noteaza de obicei cu litere mari;
- `Σ` este alfabetul terminalelor; elementele sale se noteaza de obicei cu litere mici;
- `P` este multimea regulilor de productie;
- `S ∈ N` este simbolul initial.

O productie se noteaza de forma:

`u -> v`

si exprima faptul ca, intr-un cuvant, subcuvantul `u` poate fi inlocuit cu subcuvantul `v`. In fiecare productie, cuvantul din partea stanga trebuie sa contina cel putin o variabila/neterminal.

### Derivare directa

Pe multimea cuvintelor se defineste relatia `⇒`. Scriem:

`w ⇒ ω`

si citim „`w` deriva direct `ω`” daca exista o productie `u -> v` si cuvinte `α`, `β`, astfel incat:

- `w = αuβ`
- `ω = αvβ`

Adica `ω` se obtine din `w` prin inlocuirea unei aparitii a lui `u` cu `v`.

### Derivare in mai multi pasi

Inchiderea reflexiva si tranzitiva a relatiei `⇒` se noteaza cu `⇒*`. Aceasta permite derivari in zero, unul sau mai multi pasi. Derivarea in `k` pasi se noteaza cu `⇒^k`.

### Limbaj generat

Limbajul generat de gramatica `G` este multimea cuvintelor terminale care pot fi obtinute din simbolul initial:

`L(G) = { w ∈ Σ* | S ⇒* w }`

Doua gramatici care genereaza acelasi limbaj se numesc **echivalente**.

### Clasificarea Chomsky

Chomsky a introdus o clasificare a gramaticilor in functie de restrictiile impuse productiilor:

1. **Gramatici de tip 0** - nu au restrictii impuse asupra productiilor.
2. **Gramatici de tip 1 / dependente de context** - orice productie `u -> v` satisface conditia `|u| <= |v|`.
3. **Gramatici de tip 2 / independente de context (GIC)** - orice productie are in stanga un singur neterminal: `u ∈ N`, `|u| = 1`, iar partea dreapta nu este vida.
4. **Gramatici de tip 3 / regulate** - partea stanga este un neterminal, iar partea dreapta are forma specifica gramaticilor regulate; in forma redusa, productiile au partea dreapta de forma terminal sau terminal urmat de neterminal.

Daca `L_i` este familia limbajelor generate de gramaticile de tip `i`, atunci:

`L3 ⊂ L2 ⊂ L1 ⊂ L0`

**Sursa in curs:** Curs 1, I.1. Clasificarea gramaticilor dupa Chomsky, pp. 9-12.

---

## 3. Recursivitatea limbajelor - definitie

**Intrebare:** Cand este un limbaj recursiv?

**Raspuns:**

Un limbaj `L` peste alfabetul `Σ` este **recursiv** daca exista un algoritm care, pentru orice secventa `w ∈ Σ*`, determina daca `w ∈ L` sau `w ∉ L`.

Cu alte cuvinte, problema apartenentei unui cuvant la limbaj este rezolvabila algoritmic: algoritmul se opreste si raspunde „DA” sau „NU” pentru orice cuvant de intrare.

In curs este precizat ca **limbajele de tip 1 sunt recursive**.

**Sursa in curs:** Curs 1, sectiunea despre testarea recursivitatii, p. 12.

---

## 4. Automate finite - definitie, configuratie, trecere, limbaj acceptat

**Intrebare:** Ce este un automat finit si cum accepta un limbaj?

**Raspuns:**

Un **automat finit** are doua componente principale:

- o **banda de intrare**, infinita la dreapta, impartita in celule;
- o **unitate centrala**, care se poate afla intr-un numar finit de stari.

In functie de starea curenta si de simbolul citit de pe banda de intrare, unitatea centrala isi poate schimba starea.

Un automat finit este un sistem:

`A = (Q, Σ, δ, q0, F)`

unde:

- `Q` este multimea starilor automatului;
- `Σ` este alfabetul de intrare;
- `δ : Q × Σ -> P(Q)` este functia de tranzitie;
- `q0` este starea initiala;
- `F` este multimea starilor finale.

### Configuratie

O **configuratie** a automatului este o pereche:

`(q, α)`

unde:

- `q` este starea curenta;
- `α` este secventa de pe banda de intrare ramasa de citit.

Configuratia initiala este:

`(q0, w)`

iar o configuratie finala este:

`(q, ε)`, cu `q ∈ F`.

### Trecere

Un pas de functionare inseamna trecerea de la o configuratie la alta:

`(q, aα) -> (p, α)`

unde `p ∈ δ(q, a)`.

Adica automatul citeste simbolul `a`, trece din starea `q` in starea `p`, iar pe banda ramane de citit `α`.

### Limbaj acceptat

Limbajul acceptat de automatul finit `A` este multimea cuvintelor care duc automatul din configuratia initiala intr-o configuratie finala:

`L(A) = { w ∈ Σ* | (q0, w) ⇒* (p, ε), p ∈ F }`

**Sursa in curs:** Curs 1, I.2. Automate finite, pp. 12-14.

---

## 5. Automate pushdown - definitie, configuratie, trecere, limbaj acceptat

**Intrebare:** Ce este un automat pushdown si ce limbaj accepta?

**Raspuns:**

Automatele **pushdown** sunt mecanisme de recunoastere a limbajelor independente de context. Numele vine de la organizarea memoriei auxiliare sub forma de **stiva**.

Un automat pushdown este un sistem:

`P = (Q, Σ, Γ, δ, q0, Z0, F)`

unde:

- `Q` este multimea starilor automatului;
- `Σ` este alfabetul de intrare;
- `Γ` este alfabetul intern, adica alfabetul stivei pushdown;
- `δ : Q × (Σ ∪ {ε}) × Γ -> P_f(Q × Γ*)` este functia de tranzitie;
- `q0` este starea initiala;
- `Z0` este simbolul intern initial al stivei;
- `F` este multimea starilor finale.

### Configuratie

O configuratie a automatului pushdown este un triplet:

`(q, w, γ)`

unde:

- `q` este starea curenta;
- `w` este portiunea din secventa de intrare ramasa de citit;
- `γ` este continutul memoriei pushdown, adica al stivei.

Configuratia initiala este:

`(q0, w, Z0)`

### Trecere

Trecerea de la o configuratie la alta se face prin pasi. Daca:

`(q1, α) ∈ δ(q, a, Z)`

atunci se poate trece din:

`(q, aw, Zγ)`

in:

`(q1, w, αγ)`

Adica automatul citeste simbolul `a`, scoate `Z` din varful stivei, introduce `α` si trece in starea `q1`.

### Limbaj acceptat

In curs sunt prezentate doua criterii de acceptare:

1. **Acceptare dupa criteriul benzii pushdown vide:**

   `Lε(P) = { w ∈ Σ* | (q0, w, Z0) ⇒* (p, ε, ε) }`

   Cuvantul este acceptat daca intrarea este consumata si stiva devine vida.

2. **Acceptare dupa criteriul starii finale:**

   `L(P) = { w ∈ Σ* | (q0, w, Z0) ⇒* (p, ε, α), p ∈ F }`

   Cuvantul este acceptat daca intrarea este consumata si automatul ajunge intr-o stare finala.

Cele doua moduri de acceptare sunt echivalente: un limbaj este acceptat de un automat pushdown dupa criteriul starii finale daca si numai daca este acceptat dupa criteriul benzii pushdown vide.

**Sursa in curs:** Curs 3, I.6. Automate pushdown si limbaje independente de context, pp. 39-46.

---

## 6. Gramatici LL - definitie, PRIM, URM

**Intrebare:** Ce sunt gramaticile LL si cum sunt definite functiile PRIM si URM?

**Raspuns:**

Gramaticile **LL(k)** sunt gramatici independente de context pentru care derivarea la stanga poate fi determinata in mod unic folosind:

- partea deja citita din cuvantul de intrare;
- urmatoarele `k` simboluri de intrare;
- neterminalul care trebuie expandat.

Litera `L` din stanga indica faptul ca intrarea este parcursa de la **stanga la dreapta**, iar a doua litera `L` indica faptul ca se construieste o **derivare la stanga**.

### Definitia functiei PRIM

Pentru o gramatica `G`, un numar natural `k` si un cuvant `α ∈ (N ∪ Σ)*`, functia:

`PRIM_k(α)`

contine prefixele terminale de lungime cel mult `k` ale cuvintelor care pot fi derivate din `α`.

Intuitiv, `PRIM_k(α)` raspunde la intrebarea:

> Ce secvente terminale pot aparea primele daca derivam din `α`, privind cel mult `k` simboluri?

Pentru `k = 1`, aceasta functie corespunde ideii de **FIRST**.

### Definitia gramaticii LL(k)

O gramatica `G = (N, Σ, P, S)` este `LL(k)` daca, in orice situatie de derivare la stanga, urmatoarele `k` simboluri de intrare determina in mod unic productia care trebuie folosita pentru expandarea neterminalului curent.

Formal, daca exista doua derivari posibile pornind din aceeasi forma sententiala:

`S ⇒* wAα ⇒ wβα ⇒* wx`

si

`S ⇒* wAα ⇒ wγα ⇒* wy`

iar:

`PRIM_k(x) = PRIM_k(y)`

atunci trebuie sa rezulte:

`β = γ`

Adica nu pot exista doua productii diferite pentru acelasi neterminal care sa produca aceeasi anticipare de lungime `k`.

### Definitia functiei URM

Pentru `β ∈ (N ∪ Σ)*`, functia:

`URM_k(β)`

este definita ca multimea prefixelor de lungime cel mult `k` care pot urma dupa `β` intr-o forma sententiala derivata din simbolul initial.

Intuitiv, `URM_k(β)` raspunde la intrebarea:

> Ce secvente terminale pot aparea imediat dupa `β` intr-o derivare din `S`?

Pentru `k = 1`, aceasta functie corespunde ideii de **FOLLOW**.

**Sursa in curs:** Curs 4, I.7.4. Gramatici LL(k), pp. 52-57.

---

## 7. Gramatici LR - definitie LR(k)

**Intrebare:** Ce este o gramatica LR(k)?

**Raspuns:**

Gramaticile **LR** au fost introduse de Knuth, iar clasa limbajelor generate de ele este clasa limbajelor independente de context deterministe. Analiza LR are avantajul generalitatii: limbajele de programare care admit o definitie sintactica in forma BNF sunt, in general, analizabile LR.

In analiza LR:

- intrarea este parcursa de la stanga la dreapta;
- se construieste derivarea cea mai din dreapta, dar in sens invers;
- se folosesc `k` simboluri de anticipare pentru a decide reducerile.

Pentru construirea arborelui de derivare se folosesc urmatoarele informatii:

1. o pozitie curenta in cuvantul de analizat;
2. intregul context stanga al cuvantului sursa;
3. urmatoarele `k` simboluri ale sursei;
4. faptul ca, la fiecare pas, neterminalul care deriveaza este cel mai din dreapta.

O gramatica este **LR(k)** daca aceste informatii determina in mod unic:

- daca pozitia curenta indica limita dreapta a partii reductibile;
- limita din stanga a partii reductibile;
- productia folosita pentru reducere.

Pentru definitia formala, se considera gramatica extinsa `G'`, obtinuta prin adaugarea unui nou simbol initial `S'` si a productiei:

`S' -> S`

O gramatica `G` este `LR(k)` daca, in situatiile in care doua derivari la dreapta ar putea conduce la aceeasi anticipare de lungime `k`, partea reductibila si productia de reducere sunt determinate unic.

**Sursa in curs:** Curs 5, I.7.5. Gramatici LR(k), pp. 63-69.

---

## 8. Analiza sintactica - formularea problemei, principii descendente si ascendente

**Intrebare:** Cum este formulata problema analizei sintactice si care sunt principiile de functionare ale analizei descendente si ascendente?

**Raspuns:**

### Formularea problemei

Fie o gramatica independenta de context:

`G = (N, Σ, P, S)`

si un cuvant:

`α ∈ L(G)`

Spunem ca a fost efectuata **analiza sintactica** a secventei `α` daca a fost gasit cel putin un **arbore generator** pentru `α`.

Analiza sintactica poate fi:

- **la stanga**, cand se determina o derivare la stanga;
- **la dreapta**, cand se determina o derivare la dreapta.

Dispozitivele care furnizeaza analiza sintactica la stanga se numesc **analizoare descendente**. Dispozitivele care furnizeaza analiza sintactica la dreapta se numesc **analizoare ascendente**.

### Principiul analizei sintactice descendente

Analiza descendenta, numita si **top-down**, construieste arborele de derivare de la radacina spre frunze.

Principiul este urmatorul:

1. Se porneste de la simbolul initial `S`, ca radacina a arborelui.
2. Se alege o productie pentru neterminalul curent si se face o **expandare**.
3. Daca in varful stivei apare un terminal care coincide cu simbolul curent de intrare, terminalul este sters si citirea avanseaza cu o pozitie.
4. Daca alternativa aleasa nu corespunde sirului de intrare, analizorul revine si incearca alta alternativa.
5. Daca se consuma tot cuvantul de intrare si arborele este complet, analiza se termina cu succes.

In curs, algoritmul general de analiza descendenta foloseste backtracking si doua benzi pushdown: una pentru alternativele incercate si alta pentru simbolurile care trebuie inca analizate.

### Principiul analizei sintactice ascendente

Analiza ascendenta, numita si **bottom-up**, construieste arborele de derivare pornind de la frunze spre radacina.

Principiul este urmatorul:

1. Se porneste de la sirul de intrare.
2. Se cauta o parte reductibila, adica o secventa care poate fi partea dreapta a unei productii.
3. Daca se gaseste o productie `A -> β`, secventa `β` este redusa la neterminalul `A`.
4. Reducerile continua pana cand se obtine simbolul initial `S`.
5. Daca o reducere aleasa duce la blocaj, analizorul revine si incearca alta reducere posibila.

Acceptarea are loc daca, dupa consumarea intrarii si aplicarea reducerilor, se ajunge la simbolul initial.

**Sursa in curs:** Curs 7, II.3.1-II.3.2, pp. 101-109.

---

## 9. Codul intermediar - generalitati

**Intrebare:** Ce este codul intermediar si care este rolul lui?

**Raspuns:**

Rezultatul analizei sintactice si semantice consta intr-un fisier care contine traducerea programului intr-un **limbaj intermediar**. Acesta este mai apropiat de limbajul de asamblare decat de limbajul sursa.

Programul intermediar este o succesiune de operatii impreuna cu operanzii lor. Operatiile sunt in mare parte similare celor din limbajul de asamblare:

- operatii aritmetice;
- atribuiri;
- teste;
- salturi.

Ordinea operatiilor in codul intermediar este ordinea in care acestea se executa.

Din codul intermediar lipsesc declaratiile; descrierea operanzilor se gaseste in **tabela de simboluri**.

Codul intermediar se deosebeste de limbajul de asamblare prin faptul ca operanzii nu sunt registi sau cuvinte de memorie, ci referinte la intrari in tabela de simboluri. Operanzii pot contine si informatii despre natura lor:

- variabile simple;
- variabile indexate;
- variabile temporare;
- constante;
- apeluri de functii;
- mod de adresare direct sau indirect.

Formele principale de reprezentare a codului intermediar prezentate in curs sunt:

1. **Forma poloneza** - notatie postfixata, utila pentru expresii aritmetice.
2. **Arbori sintactici** - reprezentare apropiata de structura sintactica a programului sursa.
3. **Cod cu trei adrese** - secventa de instructiuni simple, de forma `A := B op C`.

Codul cu trei adrese poate fi implementat prin:

- **triplete**;
- **triplete indirecte**;
- **cuadruple**.

**Sursa in curs:** Curs 10, Generarea codului intermediar, pp. 145-151.

---

## 10. Cod obiect - tipuri de cod obiect

**Intrebare:** Ce este codul obiect si ce tipuri de cod obiect sunt prezentate in curs?

**Raspuns:**

Ultima faza a compilarii are ca scop sinteza **programului obiect**, adica a unui program executabil sau aproape executabil. Acesta poate fi preluat de un alt procesor de limbaj implementat pe calculatorul tinta si tradus in cod executabil.

Generarea codului este una dintre cele mai importante si dificile faze ale compilarii, deoarece necesita cunostinte despre masina tinta si despre sistemul de operare.

Formele pe care le poate lua programul obiect sunt:

1. **Program executabil**
   - Rezultatul este direct executabil.
   - Este stocat intr-o zona de memorie fixa.
   - Toate adresele sunt puse la zi.
   - Este recomandat pentru programe mici.
   - Dezavantaj: lipsa de flexibilitate; compilarea modulara este imposibila.

2. **Program obiect / translatabil**
   - Inainte de executie necesita faza de editare de legaturi.
   - Permite legarea rutinelor din biblioteci sau a rutinelor realizate de utilizatori.
   - Este forma cea mai intalnita in compilatoarele comerciale.

3. **Program in limbaj de asamblare**
   - Este cel mai simplu de generat.
   - Instructiunile sunt apropiate de instructiunile cu trei adrese.
   - Necesita o faza de asamblare inainte de executie.
   - Rezultatul nu este direct utilizabil.

4. **Program intr-un alt limbaj**
   - Simplifica generarea codului.
   - Necesita cel putin o compilare suplimentara pentru a putea fi executat.
   - Este cazul preprocesoarelor de limbaje.

Generarea codului obiect depinde de:

- calculatorul tinta;
- sistemul de operare;
- forma codului intermediar;
- optimizarile facute anterior;
- verificarile semantice deja realizate.

**Sursa in curs:** Curs 12, II.7.1. Generalitati, pp. 177-180.

---

## 11. Tabela de simboluri - generalitati privind structura ei

**Intrebare:** Ce este tabela de simboluri si ce structura are?

**Raspuns:**

**Tabela de simboluri** este structura in care compilatorul concentreaza informatia selectata despre numele simbolice care apar in programul sursa.

In forma cea mai simpla, tabela de simboluri este un tablou de inregistrari. Ea poate fi reprezentata si prin alte structuri, cum ar fi:

- arbori;
- liste;
- tabele dispersate.

Tabela de simboluri este divizata in doua parti:

1. **Numele**
   - este un sir de caractere care reprezinta identificatorul.

2. **Informatia asociata numelui**
   - contine atributele identificatorului, cum ar fi:
     - tipul: `integer`, `real`, `record`, `array` etc.;
     - utilizarea: parametru formal, eticheta, subprogram etc.;
     - domeniul de definitie: numar de dimensiuni, limite pentru tablouri etc.;
     - adresa de memorie.

Divizarea se face pentru economie de memorie. Numele simbolice pot deveni inutile dupa iesirea din domeniul lor de valabilitate, iar spatiul ocupat de ele poate fi reutilizat.

### Utilizarea tabelei de simboluri in compilare

Tabela de simboluri este folosita in mai multe faze:

- **Analiza lexicala si sintactica** - se verifica daca un nume este deja memorat; daca nu, este introdus in tabela.
- **Analiza semantica** - se verifica daca identificatorii sunt utilizati conform declaratiilor.
- **Generarea codului** - se determina lungimea zonelor de memorie alocate variabilelor.
- **Tratarea erorilor** - se evita mesajele de eroare redundante.

### Actiuni asupra tabelei de simboluri

Compilatorul executa asupra tabelei de simboluri operatii precum:

- verificarea daca un nume apare pentru prima data;
- adaugarea unui nume nou;
- adaugarea de informatii la un nume existent;
- stergerea unui nume sau a unui grup de nume.

### Organizarea tabelei

Performanta compilatorului depinde mult de eficienta cautarii in tabela de simboluri, deoarece cautarea se face pentru fiecare simbol intalnit. Din acest motiv, metoda de organizare este foarte importanta.

In curs sunt prezentate urmatoarele forme de organizare:

1. **Tabele neordonate** - intrarile sunt adaugate secvential, in ordinea aparitiei.
2. **Tabele ordonate alfabetic** - permit cautare binara.
3. **Tabele arborescente** - folosesc arbori binari pentru reprezentarea simbolurilor.
4. **Tabele dispersate** - folosesc functii de dispersie pentru acces rapid; coliziunile pot fi tratate prin inlantuire.

**Sursa in curs:** Curs 13, II.8.1-II.8.2, pp. 193-203.

---

## Recapitulare rapida

- **Compilatorul** traduce programul sursa in program obiect si parcurge faze precum analiza lexicala, sintactica, semantica, cod intermediar, optimizare si cod obiect.
- **Gramatica** este `G = (N, Σ, P, S)`, iar limbajul generat este `L(G) = { w ∈ Σ* | S ⇒* w }`.
- **Clasificarea Chomsky**: tip 0, tip 1, tip 2, tip 3, cu incluziunea `L3 ⊂ L2 ⊂ L1 ⊂ L0`.
- **Limbaj recursiv**: exista algoritm care decide apartenenta oricarui cuvant la limbaj.
- **Automatul finit** recunoaste limbaje regulate.
- **Automatul pushdown** recunoaste limbaje independente de context si foloseste o stiva.
- **Gramaticile LL(k)** permit analiza determinista descendenta cu `k` simboluri de anticipare.
- **Gramaticile LR(k)** permit analiza determinista ascendenta cu `k` simboluri de anticipare.
- **Analiza sintactica** inseamna gasirea unui arbore generator pentru cuvantul analizat.
- **Codul intermediar** este o reprezentare intre programul sursa si codul obiect.
- **Codul obiect** poate fi executabil, translatabil, in limbaj de asamblare sau intr-un alt limbaj.
- **Tabela de simboluri** retine identificatorii si atributele lor si este folosita in mai multe faze ale compilarii.
