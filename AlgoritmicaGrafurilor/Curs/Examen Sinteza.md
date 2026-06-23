1. **Graf Neorientat**
Un **graf neorientat** este o structură formată dintr-o mulțime de **noduri** (sau **vârfuri**) și o mulțime de **muchii**, unde fiecare muchie leagă două noduri, fără a avea o direcție.

1. **Gradul unui varf**
2. **Gradul unui vârf** într-un graf neorientat este numărul de muchii care sunt incidente (conectate) cu acel vârf.
- Dacă un vârf are **grad 0**, este izolat (nu are conexiuni).  
- Într-un graf orientat, se definește **gradul intern** (numărul de arce care intră) și **gradul extern** (numărul de arce care ies).

3. **Graf parțial. Subgraf. Graf complementar**
**Graf parțial** – Un graf obținut dintr-un graf dat prin eliminarea unora dintre muchii, dar păstrând toate nodurile.
**Subgraf** – Un graf obținut dintr-un graf dat prin eliminarea unor noduri și a muchiilor incidente acestora.
**Graf complementar** – Un graf care are aceleași noduri ca graful inițial, dar conține exact acele muchii care **nu** există în graful inițial.

4. **Graf complet**
**Graf complet** – Un graf neorientat în care fiecare pereche de noduri este conectată prin exact o muchie. 
- Un graf complet cu $n$ noduri se notează $Kn$​ și are $\frac{n(n-1)}{2}$ muchii.​
- Fiecare vârf are gradul $n−1$

5. **Graf conex. Componente conexe**
**Graf conex** – Un graf neorientat este conex dacă există un **lanț** (secvență de muchii) între orice pereche de noduri, adică toate nodurile sunt accesibile între ele.
**Componente conexe** – Subgrafuri conexe maxime ale unui graf neorientat. Dacă un graf nu este conex, el poate fi împărțit în mai multe **componente conexe**, fiecare fiind un graf conex independent.

6. **Arbore. Pădure**
**Arbore** – Un graf neorientat, **conex** și **fără cicluri**. Un arbore cu nn noduri are exact $n-1$ muchii.
**Pădure** – O reuniune de **mai mulți arbori** disjuncți, adică un graf fără cicluri, dar care poate avea mai multe componente conexe.

7. ** Graf hamiltonian. Graf eulerian**
**Graf hamiltonian** – Un graf care conține un **ciclu hamiltonian**, adică un ciclu care trece prin **fiecare nod exact o dată**.
**Graf eulerian** – Un graf care conține un **ciclu eulerian**, adică un ciclu care trece prin **fiecare muchie exact o dată**.
- Un graf neorientat este **eulerian** dacă toate vârfurile au **grad par** și este conex. 
- Un graf neorientat este **semi-eulerian** dacă are exact **două** vârfuri de grad impar (există un **lanț eulerian**, dar nu un ciclu eulerian).

8. **Circuit**
**Circuit** – Un lanț închis, adică o **succesiune de muchii** în care:
Fiecare muchie este parcursă o singură dată.
Primul și ultimul nod coincid.
- **Circuit eulerian** – Un circuit care trece prin **fiecare muchie exact o dată**.  
- **Ciclu hamiltonian** – Un circuit care trece prin **fiecare nod exact o dată**.

9. **Conexitate. Tare conexitate**
**Conexitate** (într-un graf neorientat) – Un graf este **conex** dacă există un **lanț** între oricare două noduri. Dacă graful nu este conex, se poate împărți în **componente conexe**.
**Tare conexitate** (într-un graf orientat) Un graf este **tare conex** dacă pentru orice două noduri u și v, există un **drum orientat** de la u la v și invers. Dacă un graf nu este tare conex, poate avea **componente tare conexe**.

10. **Lant**
**Lanț** – O succesiune de muchii care leagă două noduri într-un graf, astfel încât muchiile să fie adiacente una după alta.
- **Lanț simplu** – Un lanț în care **muchiile nu se repetă**.  
- **Lanț elementar** – Un lanț în care **nodurile nu se repetă** (cu excepția posibilă a primului și ultimului nod).  
- **Lanț eulerian** – Un lanț care **trece prin fiecare muchie exact o dată**.

11. **Arbore**
**Arbore** – Un graf neorientat, **conex** și **fără cicluri**. Este o structură ierarhică în care există un singur drum între orice două noduri.
**Proprietăți ale unui arbore:**
- Un arbore cu nn noduri are exact $n-1$ muchii.
- Fiecare nod, cu excepția rădăcinii, are un unic **părinte** și poate avea mai mulți **copii**.
- Un arbore are exact un **drum** între orice două noduri.
Un arbore poate fi folosit pentru a reprezenta ierarhii sau structuri de date, cum ar fi arborele binar sau arborele de decizie.

12. **Arbore binar de cautare**
**Arbore binar de căutare (ABC)** - Un arbore binar în care **fiecare nod** respectă următoarea proprietate:
- **Valoarea nodului din subarborele stâng** este mai mică decât valoarea nodului părinte.
- **Valoarea nodului din subarborele drept** este mai mare decât valoarea nodului părinte.
**Proprietăți ale unui ABC**:
- Fiecare nod are **maxim două subarbori** (unul la stânga și unul la dreapta).
- Permite **căutări rapide** ale elementelor, deoarece la fiecare pas se poate decide dacă trebuie să căutăm în subarborele stâng sau în subarborele drept.
- Operațiile de căutare, inserare și ștergere se pot face într-un timp $O(\log n)$, dacă arborele este echilibrat.
Un **arbore binar de căutare** este utilizat adesea pentru a stoca și organiza date în mod eficient