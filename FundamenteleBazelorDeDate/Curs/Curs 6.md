## LIMBAJE DE INTEROGARE A DATELOR PENTRU MODELUL RELAŢIONAL

1. Algebra relațională si extensiile sale
	1. Operații ale algebreirelaționale
2. Calculul relațional
	1. Calculul relațional orientat pe tupluri
	2. Calculul relațional orientat pe domenii
3. Criterii de optimizare a interogărilor

#### Ce este algebra Relationara
- Limbaj procedural introdus de E.F Codd.
- Operatii asupra relatiilor, fiecare returnand o relatie
- Doua categorii:
	- Operatii de baza
	- Operatii extinse
#### Operatiile de baza in AR
1. Selectia : filtreaza tupliuri dupa conditii
2. Proiectia: selecteaza coloane(atribute)
3. Produsul Cartezian, Reuniunea, Diferenta , Intersectia
4. Join
5. Diviziune

**Selectia** extrage acele tupluri  dintr-o relatie care satisface o conditie. 
Exemplu:
```SQL
SELECT * FROM ORAR_ZBORURI WHERE PLECARE = 'TIMISOARA'
```

**PROIECTIA** extrage anumite coloane(atribute) dintr-o relatie si elimina duplicatele
Exemplu: -π_PD.PAReturneaza punctele de plecare si de aterizare ale zborurilor

**REUNINUNE** combina tuplurile a doua relatii compatibile(acceas schema).
Exemplu: Zboruri U ZboruriInternationale ->combinate toate zborurile internationale si interne

**DIFERENAT** returneaza tuplurile care apar intr-o relatie dar nu si in cealalta.
Exemplu: Zboruri-Anulate->Zboruri Active(neanulate)

**INTERSECTIA** returneaza tuplurile care apar in ambele relatii.
Exemplu: -Zboruri ∩ Preferate

**PRODUSUL CARTEZIAN** genereaza combinatii de tupluri intre doua relatii
Exemplu: Orar1 x Pilot ->Toate combinatiile de zboruri si piloti(fara filtrare).

**JOIN** combina tupluri din doua relatii pe baza unei conditii.
Exemplu:-Orar1xOras(PD = PD)->Asociaza zborurile cu judetele corespunzatoare

**JOIN NATURAL** elimina duplicarea.

**JOIN EXTERN** include si tuplurile ca nu au corespondend, completand NULL.
Exemplu: Oras1x

**SEMI-JOIN** returneaza doar tuplurile din prima relatie care au corespondent in a doua.

**DIVIZIUNEA** identifica entitatile care sunt asociate cu toate valorile dintr-un set.
Exemplu: Drept / TipAvion -> Pilotii care pot pilota toate tipurile de avioane

**COMPLEMENTAREA** contine tuplurile din produsul cartezian care nu apar in relatia data.
Exemplu: not Drept -> Combinari posibile Pilot-TipAvion care nu exista in tabela Drept

**SPLITAREA** imparte o relatie in doua pe baza unei conditii.
Exemplu: Split(Drept, Pilot='Dan') -> Drept1 cu pilot Dan, Drept2 fara pilot Dan

**INCHIDERA TRANZITIVA** extinde o relatie pe baza proprietatii de tranzitivitate.
Exemplu: Daca A -> B si B -> C atunsi se adauga si A -> C

#### Calculul Relational
- Calculul Relational pe Tupluri
Foloseste variabile tuplu
Forma genereala: {t | F{t}}, unde F este o formula logica.

- Calculul Relational pe Domenii
Variabila este definita pe domenii sau atribut
Forma: {x1, x2, ... ,xn| F(x1, x2, ... ,xn)}

#### Optimizarea Interogarilor
1. Exprimarea cererilor ca expresii algebrice
2. Aplicarea transformarilor echivalente pentru eficienta
3. Utilizarea proprietatilor algebrice(comutativitatea, asociativitatea etc.)

#### Strategii de Optimizarea
1. Mutarea selectiei in fata operatiei de join-ului.
2. Mutarea proiectiei in fata join-ului.
3. Combinarea selectiilor rapide.
4. Separarea selectiilor lente.
5. Aplicarea proiectiei dupa selectie pentru reducerea tuplurilor.


