#### **Limbajul HTML**
Nodurile sunt concepte care sunt blocuri de informatii, un nod reprezinta un concept unic, putand contine text, grafica, animatie.
#### **Ce este HTML**
HTML = HyperText Markup Language
HTML este un limbaj bazat pe SGML(Standard Generealized Markup Language), acesta nu este un limbaj de programare, e un limbaj de marcare.Ultima versiune fiind HTML 5 sau 5.3.
Prin HTML putem regasi:
- Publicarea de documente
- Regasirea online de informatii prin intermediul hyperlink-urilor, accesate printr-un simplu click
- Proiectarea de formulare pentru realizarea tranzactiilor
- Includerea de foi de calcul tabelar, clipuri video, sunete si alte aplicatii care pot fi accesate direct din browser
#### **Elementele limbajului HTML**
Marcarea textului se realizeaza prin intermediul tag-urilor, acestea reprezinta "comenzi" ce spun browserului cum sa interpreteze textul marcat, un tag este un sir de caractere delimitate de simbolurile < si >.
Exista doua tipuri de tag-uri:
- **Tag-uri tip bloc(pereche)**
```HTML
<p>Hello World"</p>
```
- **Tagurile singulare**
```HTML
<br>
<hr>
<br/> in XHTML
```
#### **Sintaxa unui tag in HTML**
Un tag poate avea unul sau mai multe atribute ce pot avea imbunatatiri sau modificari.
**Exemplu**
```HTML
<div align="center">Text centrat</div>
```
Tagurile nu sunt case sensitive, nu conteaza daca sunt scrise cu litere mici sau mari, iar cele XHTML sunt case sensitive(numai litere mici).
#### **Strucutura generala a unui document HTML**
Un document HTML este compus din 3 sectiuni:
- O linie continand informatii despre versiunea HTML
- Sectiunea declarata de inceput(header delimitata de elementul HEAD)
- Un corp (body) care contine continutul actual al documentului. Corpul poae fi implementat cu elementul **body** sau cu elementul **frameset**
**Exemplu**
```HTML
<HTML>
	<HEAD>
		<title>Titlu</title>
	<HEAD>
	<BODY>
		<p>Hello World</p>
	<BODY>
</HTML>
```
#### **Antetul HEAD**
Sectiunea HEAD cuprinde informatii despre pagina respectiva si cele mai uzuale informatii, aceasta cuprinde:
- titlul paginii
- meta-informatii cu privire la continutul paginii<title></title>
- alte taguri:
	- SCRIPT, NOSCRIPT, BGSOUND, STYLE, LINK
**Exemplu**
```HTML
	<HEAD>
		<title>Titlu</title>
		<meta name="author" content="Mihai">
		<meta name="keywords" contetnt="curs html>
	<HEAD>
```
#### **Corpul documentului - Elementul BODY**
Elementul `<BODY>...</BODY>` incadreaza continutul efectiv al paginii web
Atributele acceptate sunt:
- bgcolor = culoarea de fundal
- background = imagine de fundal
- text = culoare text
- link, vlink, alink = culori pentru link-uri, link-uri vizitate, link-uri active
**NOTA** Acestea atribute sunt depasite in HTML5
**Exemplu**
```HTML
<body>
	bgcolor="cyan" text="black"
</body>
```
#### **Elementele limbajului HTML**
- Marcaje de baza
- Marcaje pentru structura documentului
- Marcaje pentru formatarea textului
- Marcaje pentru legaturile
- DE CONTINUAT
#### **Taguri pentru inserarea de antete - H1-H6**
Acestea se impart pe 6 nivele pentru antete: H1, H2....H6. H1 fiind cel mai important iar H6 cel mai putin important, iar pentru aliniere folosim tagurile: center(centru), left(stanga), right(dreapta)
#### **Inserarea de paragrafe**
Definirea de paragrafe se face prin tag-ul `<p></p>`, enter-urile nu sunt luate in considerare pentru new line. Trecerea la un rand nou se face prin tagul `<br>`. Introducerea unei linii orizontale se face print tag-ul `<hr>` . Pentru afisarea textelor preformatate vom folosi tag-ul `<pre>...</pre>`
#### **Formatarea textului**
```
<b> text ingrosat(boldat)</b>
<i>text inclinat(italic)</i>
<u>text subliniat(underline)</u>
<em>text evidentiat</em>
<strong>text puternic accentuat</strong>
<sup>text afisat ca indice superior</sup>
<sub>text afisat ca indice inferior</sub>
<cite>text ce reprezinta o citare sau o referire la o alta resura</cite>
<code>desemneaza un de cod</code>
<font size="..." color="...">text colorat de o anumita dimensiune</font>
```
#### **Definirea Listelor**
**Liste neordonare(Unorder List)**
```HTML
<ul>
	<li>Prima lista</li>
	<li>A doua lista</li>
<ul>
```
**Liste Ordonate(Order List)**
```HTML
<ol>
	<li>Prima lista</li>
	<li>A doua lista</li>
<ol>
```
Definirea Listelor, in cazul in care listele ordonate putem stabili modul de numerotare a listelor
```html
<ol>
	<li type=A>Prima lista</li>
	<li>A doua lista</li>
<ol>
```
#### **Inserarea Imaginilor**
Pentru inserarea imaginilor intr-o pagina HTML vom folosi tagul `<img>`
```HTML
<img src="Url-ul imaginii with="latime" height="inaltime" alt="alternativa" border="grosime chenar">
<!--Exemplu-->
<img src="imagine.jpg" alt="imagine">
```
#### **Inserarea Link-urilor**
Pentru inserarea link-urilor(hyperlink) catre o alta pagina se realizeaza prin intermediul tag-ului `a`
```
<a href="Url pagina" title="titlu link>Text Link</A>
<!--Exemplu-->
<a href="inf.ucv.ro>Departament Inforrmatica</a>
```
Textul asociat link-ului va fi automat subliniat si colorat.
Atributul target are urmatoarele valori:
- _self = deschide in fereastra curenta
- _top = deschide peste fereastra browserului
- _blank = deschide intr-o fereastra noua
- _parent = in mare parte este deprecat_
Pentru a putea sari intr-o anumita parte a pagini folosim achora.
#### **Linkuri Absolute/Relative**
URL-urile absolute indica adressa completa a paginii cu tot cu protocol
```
<a href="http://inf.ucv.ro>Informatica</a>
```
Link-urile relative indica adresa(calea) unei pagini relativ la pagina curenta
```
<a href="course/web/index.html>Tehnologii Web</a>
```
Aceste cai respecta reguli de navigare in ierarhia de directoare de pe disk, astfel putem utiliza . si .. pentru a specifica directorul curent si respectiv directorul parinte. Un link care incepe cu / indica o cale a unei pagini la radacina site-ului web.
. => director curent
.. => director parinte
/ => director radacina
						**POZA CURS ARBORE(SLIDE 33)**
Se recomanda ca link-urile intre paginile ce apartin aceluiasi sa fie link-uri relativ deoarece:
- paginile pot fi gazduite (mutate) pe domenii diferite fara a necesita modificarea link-urilor
- paginile au o dimensiune mai mica
Utilizam link-uri absolute doar cand facem trimiterea catre resurse aflate in alte domenii distincte fata de domeniul nostru
#### **Inserarea tabelelor**
Pentru inserarea tabelelor folosim tag-ul `<table>`
- `<tr`pentru a insera liniei
- `<td>`folosit pentru inserare date  
- `<th>`transfora textul in titlu(header)
- `border=2(grosume)px` acesta este grosime liniilor
Diferenta dintre `<td>` si `<th>` este modul de afisare.
#### **Inserare Tabele Spatiere**
Pentru a defini spatiul dintre celule si continutul lor.
Alinierea continutului din celula putem utiliza urtmatoarele tag-uri:
- align"left, right, center"
- valign="top, middle, buttom"
Unire celulelor se realizeaza prin:
- **colspan**(unirea pe orizontala)
- **rowspan**(unirea pe verticala)
Acestea pot fi folosite doar pe `<td> si <th>`
#### **Entitati**
Anumite caractere precum < > au o semnificatie speciala, pentru a putea utiliza aceste caractere intr-o pagina au fost introduse entitatile
Cele mai utilizate entitati sunt:
- &lt; -> <
- &gt; -> >
- &amp; -> &
- &pos; -> '
- &quot; -> "
- &nbsp -> spatiu alb
#### **Comentarii**
```
<!--Comentariu-->
```
#### **Structura Documentelor HTML 5**
**POZA SLIDE 47**
```

<header>
-Defineste partea superioara a paginii de regula logo-ul si navigarea
<footer>
-Defineste  partea inferioarea a paginii de regula copyright
<main>
-Defineste partea principala a paginii
-Il putem insera o singura data in body
<nav>
-Sugereaza link-uri ce formeaza navigarea
<section>
-Defineste  o sectiune/articol
<article>
-Defineste elemente independente ale unei pagini
```
#### **Elemente Audio**
```
<audio src="fisier.mp3" controls>
SAU
<audio controls>
```
#### **Elemente Video**
```
<video src="cale.mp4 control>
```
#### **Validarea documentelor HTML**
- [https://validator.w3.org