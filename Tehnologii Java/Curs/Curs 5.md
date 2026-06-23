**Structura programelor Java. Tipul de date. Instructiuni de citire/scrire cu ajutorul clasei  Scanner**

**Fluxuri de date**
Pentru a duce informatia dintr-un mediu extern, un program Java trebuie sa deschida un canal de comunicatie de la sursa informatiilor si sa citeasca secvential informatiile.
Sursele de informatie pot fi:
- Fisiere
- Soket/retea
- Memorie
- Alte programe
**Observatii:** Indiferent de tipul informatiilor citirea/scrierea de pe/catre un mediu extern respecta urmatorul algoritm:
- Se deschide canalul de comunicatii.
- Cat timp exista informatii, atunci citeste/scrie informatii.
- Inchide canalul de comunicatii.

**Definitii:**
- Un flux este un canal de comunicatie unidirectional intre 2 procese.
- Un proces ce descrie o sursa externa de date se numeste **proces producator**.
- Un proces ce descrie o destinatie externa pentru date se numeste **proces consumator**.
- Un flux care citeste date se numeste **flux de intrare**.
- Un flux care scrie date se numeste **flux de iesire**.
**Observatii:** Clasele si interfetele standard pentru lucrul cu fluxuri se gasesc in pachetul **"Java.io"**

**Clasificarea fluxurilor:**
- Dupa directia canalului de comunicare:
	1. Flux de intare(pentru citirea datelor).
	2. Flux de iesire(pentru scrierea datelor).
- Dupa tipul de date pe care opereaza:
	1. Fluxuri de octeti(comuniarea seriala se realizeaza pe 8 biti).
	2. Fluxuri de caractere(comuniarea seriala se realizeaza pe 16 biti)
- Dupa actiunea lor:
	1. Fluxuri primare citire/scriere.
	2. Fluxuri pentru procesarea datelor.

**Intrari si iesiri formatate**
**Observatii:** Limbajul Java pune la dispozitie metode pentru afisarea formatata a unor informatii respectiv pentru citire de date formatate de la tastatura.
Pentru intrari formatate Java pune la dispozitie clasa  **scanner** din pachetul **java.util** iar pentru citit de la tastatura vom specifica ca argument al constructorului fluxul **system.io**
```java
Scanner s=Scanner.create(System.in);
String name = s.next();
int varsta = s.next.int();

s.close();
```

Pentru iesirile formatate in Java avem la dispozitie clasele **PrintStream/PrintWrite** astfel pe langa **print/println** avem metodele:
- format
- printf
- System.out.prtintf("%s, %8.2f, %2d, %n" nume, float, double).
**Observatii:** Formatatrea sirurilor de caractere se bazeaza pe clasa **Formatter** din pachetul **java.util**. 