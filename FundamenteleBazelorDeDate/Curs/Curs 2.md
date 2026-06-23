# **Proiectarea bazelor de date**
#### **Structura**
1. Proiectarea schemei conceptuale
2. Proiectarea schemei externe
3. Proiectarea schemei interne
#### **Proiectarea schemei conceptuale**
Etapele de proiectare si implementare a unei baze de date se pot diviza in mai multe faze:
1. Colectarea si analiza cerintelor
2. Proiectarea conceptuala
3. Alegerea unui SGBD(sistemului de gestiune a bazei de date)
4. Proiectarea logica
5. Proiectarea fizica
6. Implementare
#### **Cerinte generale** 
Inainte de proiectarea efectiva, este bine sa cunoastem rezultatele asteptate de utilizatori.
**OBS:** Faza de proiectare conceptuala implica 2 activitati paralele:
1. Proiectarea schemei
2. Proiectarea tranzactiei
Proiectarea schemei conceptuale are ca scop intelegerea cat mai completa a structurii bazei de date, a asocierilor si a constrangerilor de catre proiectanti si programatori.
#### **Metode de proiectare conceptuala bazate pe descompunerea functionala**
Metoda Top-Down **fig. 2.2**:
- Metoda Top-Down structurata
- Metoda deciziilor multicriteriale
- Metoda de cautare in adancime
- Metoda deciziilor top-down structurate
**OBS:** Descrierea metodei Top-Down in pseudocod presupune:
1. Atribuire
2. Ramificare
3. Apelare de proceduri
Pentru o abordare Bottom-Up succesiunea de etape este inversa Top-Down
#### **Metode de proiecatre bazate pe structuri de date**
Metoda Jackson imbina principiile programarii modulare si ale programarii structurate cu principiul corespondentei intre structura datelor si structura programelor.
Vom folosi, pentru reprezentarea grafica diagrame de structura, atat pentru date cat si pentru programe.
In forma cea mai simpla aplicarea metodei Jackson poate fi evidentiata in trei pasi:
1. Descrierea structuri datelor de intrare si de iesire sub forma unor diagrame de structura
2. Compunerea structurii datelor intr-o structura de program
3. Listarea operatiilor executabile
#### **Metode de proiectare bazate pe structura programelor si flux de date**
**OBS:** Aceasta metoda aplica principiul modularitatii permitand descompunerea unei aplicatii in mai multe module independente. In aceasta metoda se folosesc 3 tipuri de diagrame pentru reprezentarea proiectului:
1. Diagrame de flux de date
2. Diagrame cu structura modulelor
3. Diagrame ce definesc interfetele dintre module
#### **Proiectarea schemei externe**
Schema externa reprezinta forma sub care apare schema conceptuala pentru un user oarecare.
#### **Proiectarea schemei interne**
Proiectarea schemei interne presupune liniaizarea schemei conceptuale, metoda de linializare este specifica SGBD-ului utilizat.
