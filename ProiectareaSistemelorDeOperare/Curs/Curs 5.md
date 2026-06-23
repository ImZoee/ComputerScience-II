#### Sistem de operare cu prelucrare pe loturi
Sistem de operare cu **prelucrare pe loturi** - are de a face cu un singur proces - rula cate un program
- batch processing
#### Opusul sunt sistemele de operare **multitasking**
Daca un sistem ar avea un procesor slab putem creea iluzia de multitasking facand ca fiecare proces are rula in timp prestabilit
- Astfel se includ apeluri de cod numite **cedari** (*yield*) astfel procesorul este liber sa fie alocat sistemului de operare pentru alt proces
- acest tip de multitasking se numea **cooperant**, a aparut la Windows95
- exista si cederi implicite, cand e vorba de folosirea hardware-ului
###### Dezavantaje:
- mizare pe buna credinta a dezvoltatorului
- tratament inegal al proceselor
- daca apare o eroare -> bucla infinita si nu avem niciun mecanism pentru a retrage acel proces -> reset-ul sistemului
#### Sistem de operare cu multitasking preemptiv
In acest caz, alternativa unui astfel de multitasking cooperant este cel **preemptiv**, astfel sistemul de operare este cel care retrage procesele. Aici apare **sistemul de intrerupere**.
Procesorul se ocupa de un proces intr-un anumit timp prestabilit, iar daca expira timpul salveaza starea procesului respectiv, identifica cauza acelei intreruperi, procesorul face un read din magistrala al unui cod, se duce in vectorul de intrerupere, identifica functia si o executa - functia se numeste rutina de tratare a intreruperii. 
Ceasul da o intrerupere, ajunge la procesor, procesorul salveaza starea, identifica intreruperea, executa rutina conform vectorului de intrerupere, va rula un algoritm astfel ca procesorul sa ruleze instructiunile unui alt proces.
Daca avem o eroare, vine intreruperea de la ceas si procesorul este retras de catre sis de operare si alocat alt proces. In acest mod, nu se mai blocheaza intreg sistemul.
##### Dezavantaje:
- complexitatea - avem nevoie si de suport hardware
##### Cum apar procesele?
- ele sunt create de alte procese
- create de sistemul de operare
- create de utilizator
##### Cine le distruge?
- ele singure
- parintele lor
- sistemul de operare
- utilizatorul
##### Cum se poate termina?
- la terminarea executiei (*voluntara*)
- incheiere executie cu eroare (*voluntara* in cazul in care am facut tratamentul erorilor in mod corect)
- terminare cu eroare (*involuntara*, nu am interceptat o astfel de eroare)
- de catre alt proces (*involuntara*)
##### Ierarhie de procese
- Windows nu are
- UNIX-like au - toate procesele sunt copii al procesului __init__
##### Starile unui proces
In executie (*running*) -> Gata de executie (*ready*) -> In executie (*running*) -> Blocat (*blocked*) -> Gata de executie (*ready*)
![[Curs 5 fig 5.1.canvas|Curs 5 fig 5.1]]
