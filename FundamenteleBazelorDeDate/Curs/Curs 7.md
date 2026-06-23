## Restrictii de Integritate in Bazele de Date
- Introducere;
- Axiomele de inferenta;
- Completitudinea sistemului de in;ferente;
- Secvente derivate;
#### Introducere
- Restrictiile de integritate definesc reguli asupra datelor;
- Dependentele functionale fundamenteaza teoria normalizarii:
- Modularea relatiilor fara inconstiente;
**Definitie:** Fie relația $r$ de schemă $R$, și $X$ și $Y$ submulțimi ale lui $R$.  
Relația $r$ satisface dependența funcțională $X \rightarrow Y$ dacă:
$$
P{y}(S{x}(R))
$$
are cel mult o singură înregistrare pentru fiecare $x \in X$.
**Observatii:** 
- O F-dependenta X -> Y implica determinarea valorilor Y prin X
- O relație $r$ definită pe o schemă $R$ satisface dependența funcțională $X \rightarrow Y$ dacă:
$$
\forall t_1, t_2 \in r, \; \text{dacă } t_1(X) = t_2(X) \Rightarrow t_1(Y) = t_2(Y)
$$
- Exemplu: ORA-DECOLARE depinde de CURSA
#### Axiomele lui Armstrong(EXAMEN)
1. 1. Reflexivitate: $X\to X$
2. Augmentare: $X\to Y \implies XZ \to Y$
3. Aditivitate: $X\to Y$ și $X\to Z\implies X\to YZ$
4. Proiecție: $X\to YZ\implies X\to Y$ și $X\to Z$
5. Tranzitivitate: $X\to Y, Y\to Z\implies X\to Z$
6. Pseudotranzitivitate: $X\to Y, YZ\to W\implies XZ\to Y$
#### Exemplu F-Dependenta

| **Pilot** | **Cursa** | **Data** | **Ora-Decolare** |
| --------- | --------- | -------- | ---------------- |
| Dragos    | 75        | 9-03     | 10:15            |
| Dragos    | 80        | 10-03    | 13:25            |
| Mihai     | 80        | 8-03     | 13-25            |
| Mihai     | 87        | 12-03    | 18:50            |
| Mihai     | 75        | 11-03    | 10:15            |
| Mircea    | 75        | 13-03    | 10:15            |
| Mircea    | 80        | 12-03    | 13:25            |
| Costin    | 85        | 9-03     | 5:50             |
| Costin    | 85        | 13-03    | 5:50             |
| Costin    | 90        | 5-03     | 13:25            |
#### Procedura satisfie(Verificare $X -> Y$)

$\text{Input: relația } r \text{, atributele } X \text{ și } Y$
$\text{Se sortează tuplurile după } X \text{, apoi } Y$$\text{Pentru fiecare pereche } t_1, t_2 \in r \text{ cu } t_1(X) = t_2(X) \text{dacă } t_1(Y) \ne t_2(Y) \Rightarrow \text{return False}$$\text{Altfel } \Rightarrow \text{return True}$
#### Algortimul Closure
- $DF = \{ A \rightarrow D,\; AB \rightarrow DE,\; CE \rightarrow G,\; E \rightarrow H \}$
- Calcula, (AB) + in raport cu F
- Pas cu pas:
- $AB -> AB$
- $AB -> DE => ABDE$
- $E -> H => ABDEH$
- $Rezultat (AB) => ABDEH$
#### Completitudinea  sistemului
- F+ este inchiderea multimii de F- dependente
- O F dependente $X \rightarrow Y \in F^+ \;\Longleftrightarrow\; X  \rightarrow Y$ poate fi derivata cu axiomele A1-A6
- Procedura closure calculeaza X+ raportat la F
#### Dependente Multivoce
**Definitie:** Schema de relatie R = A1, A2... An si o partitie  X, Y, Z a schemei R cu X, Y  care NU se intersecteaza. Spunem ca r satisface dependenta multivoce 
- Definire X Y daca valorile Y sunt indeplinite de Z pentru un X fix
....
#### Axiome de inferenta pentru dependenta multivoce
- Reflexivitatea: $X->X$
- Augmentare: $X->Y=>XZ->Y$
- Aditivitate: $X->Y si X->Z=>X->YZ$
- Proiectie
- Tranzitivitate
- Pseudotranzitivitate
- Complementaritate
#### Dependente generalizate
- Extinde relatiile de tip F si MV.
- Forma: $\{ t_1, \dots, t_k \} \mid t$ sau $\{ t_1, \dots, t_k \} \mid a = b$;
**Definitie:** O dependenta generalizata peste schema relationala r de multime A1, A2..., An este o expresie de forma $\{ t_1, \dots, t_k \} \mid t$ unde fiecare ti este un tuplu de simboluri si t este: 
- Un alt tuplu caz in care avem o secventa dependenta generatoare de tupluri;
- t este o expresie $X=Y$ cu $X$ si $Y$ dintre simbolurile ce apar anterior caz in care avem o secventa generatoare de egalitati;
**OBS:** O dependenta generalizata se numeste ascunsa daca are cel putin un simbol unic si se numeste completa daca nu contine niciun simbol unic.
**OBS:** O dependenta functionala "ne banala" $X->Y$ se exprima printr un numar de dependente generalizate egal cu numarul elementelor multimii $Y-X$ 
**OBS:** O dependenta MV $X->->Y$ se exprima ca o dependenta generalizata cu ipoteza formata din doua tupluri care au aceleas simboluri pentru atributele din $X$ si simboluri distincte in rest

