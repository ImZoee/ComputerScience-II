#### **Introducere**
- Cunoasterea serviciilor oferite de reteaua internet
- Studierea metodologiilor, standardelor si tehnicolor

**Tematici**
1. Introducere in internet
2. Model client/server, protocol HTTP
3. Crearea paginilor web uitilizand (X)HTML
4. Formaterea paginilor web prin intermediului stilurilor CSS. 
5. Programarea aplicatiilor web
	- CGI(PHP)
	- JavaScript(Limbaj care ruleaza la nivelul browserului)
	- Publicarea bazelor de date pe WEB
6. Limbajul XML
7. Formatarea documentelor XML utilizand XSLT
8. Securitatea
9. Arhitectura
10. Optimizara site-urile web(SEO)

**Notare**
- Nota Laborator 50%/Nota Scris 50%(Grila), 2 intrebari cod.
- Minim 5 la scris si laborator.
- Prezentare obligatorie a proiectului(laborator).
#### **Ce este internetul**
**Retele de calculatoare** este un ansamblu de calculatoare capabile sa comunice intre ele prin intermediul unor canale de comunicatie.
**Internetul** este o retea de retele, prin care utilizatorii unui calculator sau ai unei retele pot accesa diverse sisteme apartinand altor retele.
#### **World Wild Web**
- **World Wild Web** a aparut in anul 1990
- **WEB** este un sistem de distributie locala sau globala a informatiilor
- Utilizieaza client/server
- Accesul la distanta intr-o retea acceptanduse diverse tipuri de conexiuni
- Accesul la o multitudine de surse de informatii stocate intr-o varietate de forme(text, grafica, sunet, etc.) cu ajutorul unor tipuri diferite de sisteme de operare situate pe diferite pe diferite platforme hardware
#### **Client/Server**
Reprezinta patru componente cheie necesare pentru WWW(World Wide Web):
- Serverul web
- browserul
- protocolul HTTP
- HTML
#### **Server Web**
**Server Web** este un program ce ruleaza pe un calculator conectat la internet ce furnizeaza la cerere diverse resurse WEB(documente).
**Apache Web** Server este cel mai popular server si este open source.
#### **Browser WEB**
- Browser WEB este un program software (client)  ce permite utilizatorului  sa se conecteze la un server WEB.
- Protocolul folosit este HTTP.
#### **Caracteristici Web**
- Posibilitatea de a realiza cereri simultane catre servere.
- Asigurarea securitatii transmiterilor de date.
- Stabilirea de liste a site-urilor web favorite.
- Memorarea istoricului navigarii.
- Posibilitatea de a folosi mai multe ferestre de navigare.
- Suport pentru cadre.
- Asigura transportul pentru diverse limbaje de programare folosite pentru realizarea paginilor Web dinamice si foi de stil (CSS).
#### **Protocolul HTTP**
- **Protocolul** este un set de reguli de comunicare intre client si server.
- **Protocolul HTTP** are un set de reguli de comunicare intre un server si browser web.
#### **Site-uri  Web**
- **Site WEB** este o colectie de pagini static, WWW inrudite ale unei organizatii.
- **Serverul** ce gazduieste pagini web este conectat de regula la internet, paginile fiind accesibile prin intermediul numelui de domeniu asignat acestuia (inf.ucv.ro).
- **Un server WEB** poate gestiona (gazdui) simultan mai multe site-uri web (virtual Hosting).
#### **Aplicatie WEB**
- O aplicatie Web reprezinta o colectie interconectata de pagini Web cu un continut dinamic menit a oferi o functionalitate specifica utilizatorului.
- Aplicatia Web este accesibila via unui browser, paginile dinamice fiind obtinute prin executia unor "programe" pe server.
#### **URI**
Indentificatorii uniformi de resurse se impart in doua categori:
- URL(Unifor Resource Locator) localizeaza resursa prin descrierea mecanismului de acces.
- URI(Uniform Resource Name) indentifica resursele prin nume
#### **URL**
**Sintaxa:**
- schema://host[:port#]/path/....?[;url-params][?query-string][#anchor]
**Porturi:**
- HTTP: 80
- HTTPS: 443
- FTP: 21
**Scheme**
- Consta dintr-o secventa de caractere care incepe cu o litera urmata de orice combinatie de litere, cifre, +, ., -
- case-insensitive
- oficiale:
	- file, ftp, http, ldap, mailto
	- ex: http://inf.ucv.ro, mailto pavelmarius28@yahoo.com
- neoficiale:
	- fish, skype, callto.
#### **Domain Name System -  DNS**
- System ierarhic si distribuit utlizat pentru identificarea calculatoarelor din internet sau din alte retele ce utilizeaza protocolul IP.
- Translateaza numele de hosturi in adrese IP.
	- ex: inf.ucv.ro -> 193.231.40.146
- Si invers adresele IP le translateaza in nume de hosturi
	- ex: 193.231.40.146 -> inf.ucv.ro
Acesta actioneaza ca un arbore. Acesta porneste de la **Root** si se continua la TLD Servers(Top Level Domains) care corespunde pentru toate domeniile(.ro, .org, .edu).
Pentru acceas adresa IP i-se poate asigna simultan mai multe nume.
Serverele DNS ce mentin maparile dintre adresele IP si hostname-urile domeniului unei organizatii. Acestea pot fi gestionate de o organizatie sau de furnizorul de internet.
#### **Protocolul HTTP**
Comunicarea dintre un server si client se stabileste prin HyperText Transfer Protocol(HTTP). Clientul intializeaza cererea iar serverul ii inapoiaza inapoi un raspuns la request. Este un protocol stateless(nu se mentiune o stare a sesiunii de la o cerere la alta), acesta ruleaza peste protocolul TCP, portul standard pe care ruleaza fiind portul 80.
Verisunile protocolului HTTP:
- HTTP/1.1 -> cea mai utilizata.
- HTTP/2.0.
- HTTP/3.0 -> ultima versiune disponibila.
#### **Sintaxa mesajelor**
1. **Request message**
	- Request line.
	- Header.
	- A blank line.
	- Body(Present only in some message) optional.
2. **Respons message**
	- Status line.
	- Header.
	- A blank line.
	- Body(Present only in some message).
#### **Sintaxa unei cereri**
```
METHOD /path-to-resource HTTP/version-number
Header-name-1: value
Header-name-2: value
blank line
[optional req body]
```
**EXEMPLU**
```
GET /index.php HTTP/1.1
HOST: inf.ucv.ro
User-Agent: Mozilla/5.0
Accept: text/html, */*->[Lista de preferinte]
Accept-Language: en-us
Accept-Charset: ISO-8859-1, utf-8
Connection: keep-alive
blank line
```
- GET-> Solicita un document/resura.
- HEAD-> Solicita informatii despre un document/ resursa.
- POST-> Metoda utilizata pentru a transmite date de intrare catre server.
- PUT->Metoda utilizata pentru a depune un document/resura pe server.
- DELETE, OPTIONS, TRACE, CONNECT
#### **Sintaxa pentru raspuns**
```HMETHOD version-number, status-code message
Header-name-1: value
Header-name-2: value
blank line
[optional req body]
```
**EXEMPLU**
```
HTTP:1.1 200 OK
Date: Thu, 24 Jul 2012 17:36:17 GTM
Server: Apache-Coyote/1.1(optional, indicat sa fie ascuns)
Content-Type: text/html;charset=UTF-8
Content-Lenght: 1846
blank line
<html>
</html>
```
#### **Coduri de stare**
- 1xx->Cererea a fost primita, procesul va continua
- 2xx->Cerea a fost primita cu succes,inteleasa si acceptata
- 3xx->Clientul trebuie sa efectueze actiuni suplimentare pentru a finaliza cererea 
- 4xx->Sintaxa cererii este eronata
- 5xx->Cod eroare tip server
#### **Headere HTTP**
- Server->Tipul serverului
- Date->Data si ora in format GTM
- Contetnt-Lenght->Marimea continutului in octeti
- Content-Type
- Content-Language
- Last-Modify
- Expires
- Host
- Accept
- User-Agent
- Referer
#### **Protocolul HTTPS**
Este o extensie a protocolului HTTP in care datele transferate sunt criptate, criptarea lor se realizeaza prin protocolul TLS/SSL. Criptarea este asimetrica si se realizeaza cu o perche de chei (una privata si una publica).
#### **Utilizarea uniui HTTP Proxy Server**
Un server(aplicatie). ce actioneaza ca un intermediar pentru cererile HTTP primite de la un client
- Caching
- Protejarea identitatii solicitantului(anonimizare)
- Filtrarea continutului
- Monitorizarea resurselor accesate
#### **Reverse HTTP proxy**
- Clientul via unei conexiuni internet doreste sa acceseze o resursa de pe un site pe care ruleaza un server proxy trimitans o cerere HTTP
- Reverse proxy-ul analizeaza cererea HTTP indentifica servertul web
#### **Utilizarea unui Reverse HTTP proxy**
- Loading balancing distribuie cererile catre mai multe servere pentru a reduce supraincarcarea
- Partajarea IP-urilor publice, cererile sosite de la un IP public distribuite catreb masini diferite pentru a deservi mai multe nume de domenii
- Caching
- Prevenirea atacurilor de securitate
- Restrictionarea accesului
#### **Forward vs Reverse Proxy**
Clientii fac cererea direct la server apoi trece prin internet iar reverse proxy trece prima data prin internet apoi ajunge la server
