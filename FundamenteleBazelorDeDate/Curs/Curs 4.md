## **Baze de Date cu Structuri Ierarhice si Retea**
**Baze de date Ierarhice**
**Definitie:** O baza de date ierarhica poate fi definita ca fiind o multime ordonata de realizari ale unui singur tip arbore.
**Observatii:** Un tip arbore consta dintr-un singur tip de inregistrare "radacina" la care se adauga o multime ordonata alcatuita din unul sau mai multe tipuri de sub arbori dependenti.
![[Curs 4 fig.1.canvas|Curs 4 fig.1]]
**Observatii:** O caracteristica a modelului ierarhic este aceea ca nicio realizare a unui nod copil nu poate sa existe fara a avea asociata o realizare a nodului parinte.
**Observatii:** Avand in vedere acestea precum si relatiile permise intre realizarile tipurilor de inregistrari pot fi enuntate urmoatoarele restrictii de integritate ale modelului ierarhic:
1. O realizare copil este in totdeauna asociata unei singure realizari parinte.
2. Daca un tip de inregistrare nu are realizari atunci, nici tipurile descendente de inregistrari nu au realizari.
![[Curs 4 fig.2.canvas|Curs 4 fig.2]]
#### **Modelul retea si baze de date retea**
Modelul retea utilizeaza ca structura de date structura retea. Structura retea este un graf orientat alcatuit din noduri conectate prin arce, nodurile corespund tipurilor de inregistrare si arcele corespund pointerilor.
**Observatii:** Structura de date retea seamana cu structura de date arborescenta cu diferenta ca un nod dependent(copil) poate avea mai mult de un singur parinte
![[Curs 4 fig.3.canvas|Curs 4 fig.3]]
**Observatii:** Modelul retea impune restrictia conform careia o inregistrare nu poate fi membra a doua realizari ale aceluias tip.
Modelul retea este un model complex, dificil de folosit. Implementarea lui se face pentru limbaje de prelucare secventiala a inregistrarilor, ceea ce determina o prelucrale dificila a bazelor de date, o viteaza redusa de lucru si spatiu de memorie ocupat ineficient.
Modelul retea nu poseda un mod explicit de tratare a agregarii semantice, relatiile intre inregistrari fiind folosite atat pentru reprezentarea semantica cat si pentru alte scopuri.