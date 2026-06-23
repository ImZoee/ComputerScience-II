# **Proiectarea Logica a Bazelor de Date**
#### **Modelul Entitate-Asociere (E-A)**

Modelul Entitate-Asociere (Entity-Relationship Model) este utilizat pentru a reprezenta structura conceptuală a unei baze de date prin intermediul mulțimilor de entități și al asocierilor dintre acestea. Reprezentarea grafică a acestui model se face printr-o diagramă E-A, care utilizează următoarele elemente:
- Entități: Reprezentate prin dreptunghiuri. Entitățile puternice sunt încadrate cu o linie simplă, iar cele slabe cu o linie dublă.
- Atribute: Reprezentate prin elipse conectate la entități sau asocieri. Atributele pot fi simple sau complexe.
- Asocieri: Reprezentate prin romburi conectate la entitățile asociate. Asocierile pot avea atribute proprii, reprezentate prin elipse conectate la romburi.
**Categorii de asocieri:**
- Unul-la-unul (1:1): Fiecare entitate dintr-o mulțime este asociată cu o singură entitate din cealaltă mulțime.
- Unul-la-multe (1:N): O entitate dintr-o mulțime poate fi asociată cu mai multe entități din cealaltă mulțime, dar inversul nu este valabil.
- Multe-la-multe (M:N): Fiecare entitate dintr-o mulțime poate fi asociată cu mai multe entități din cealaltă mulțime și invers.
Exemplu: O diagramă E-A poate reprezenta o instituție, incluzând entități precum „Angajat” și „Proiect”, cu asocieri precum „lucrează la”.
#### M**odelul Entitate-Asociere Extins (E-AE)**
    Modelul Entitate-Asociere Extins (Enhanced Entity-Relationship Model) extinde modelul E-A pentru a include concepte avansate, necesare în aplicații complexe. Acesta introduce noțiuni precum:
- Subtipuri și Supertipuri: Subtipurile moștenesc atributele supertipurilor și adaugă atribute specifice. De exemplu, entitatea „Angajat” poate avea subtipuri precum „Secretară” (cu atributul „VitezăRedactare”), „Tehnician” (cu atributul „Calificare”) și „Inginer” (cu atributul „Specialitate”).
- Ierarhii de tipuri: Se pot crea ierarhii prin:
    - Specializare: Abstractizarea unui tip de entitate în subtipuri, pe baza unor caracteristici
    secifice.
    - Generalizare: Combinarea mai multor tipuri de entități într-un supertip, pe baza
    caracteristicilor comune. 
**Reprezentare grafică:**
• Ierarhiile sunt reprezentate în diagrama E-A extinsă prin legături între supertipuri și subtipuri, marcate cu un semicerc orientat către subtip.
Aplicații:  
Modelul E-A extins este utilizat în domenii complexe precum telecomunicații, sisteme geografice,
proiectare tehnologică și servicii web, unde sunt necesare reprezentări mai intuitive și compacte ale datelor.
Exemplu: Entitățile „Automobil” și „Camion” pot fi generalizate într-un supertip „Vehicul”, care conține atribute comune precum „NrÎnregistrare” și „Marcă”. Subtipurile păstrează atributele specifice, cum ar fi „NumărPasageri” pentru „Automobil” și „Tonaj” pentru „Camion”.