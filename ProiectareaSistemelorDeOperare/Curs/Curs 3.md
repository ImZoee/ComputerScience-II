# Operatiile Fisierelor
Cand ne referim la operararea fisierelor ne referim la operatiile fundamentale pe care un sistem de operare trebuie sa la implementeze pentru a opera fisiere.
Operatiile fundamentale sunt:
1. **Dosar(Folder):**
	- Create=>Crearea de fisiere;
	- Open/Close=>Deschidere/inchidere de fisiere;
	- Delete=>Stergere de fisiere;
	- Rename=>Redenumirea de fisiere;
2. **Fisier(File):**
	- Read=>Citirea de fisiere(Citirea este secventiala incepand cu primul octet);
	- Write=>Creare de fisiere(Scrirea unui fisier este de asemenea secventiala incepand cu primul octet al fisierului);
	- Append=>(Este echivalent cu write care se duce la ultimul octet si incepe scrierea);
	- Delete=>Stergerea de fisiere(Dosarul ramane doar fisierul este sters);
	- Set atributes=>Functie primitiva(Seteaza atributele);
	- Get atributes=>Functie primitiva(Preia atributele);
Operatiile complexe sunt **Copy** & **Paste** din aceste operatii elementare.
#### **Cataloage**
Sistemele de operare primitive aveau decat un singur catalog(folder) numit **Root**. Aceste lucururi au evoluat sistemele de operare ne mai avand doar un catalog acesta extizanduse la useri fiecare avand catalogul sau.
"`/`" si "`\`" sunt radacini
. = catalog curent
..=catalog parinte
Calea absoluta este calea care porneste de la radacina iar calea relativa este calea care porneste dintr-un punct prestabilit a noastra.
**Cale absoluta** /A/C/D/E/X
**Cale relativa** ./F/U sau ../C/Z
**Copiere fisier prin cale Absoluta in B** => `cp /A/C/D/E/Y .`
**Copiere fisier prin cale relativa in C** => `cp ./D/E/X .`
**Creare de fisiere prin** **mkdir**
![[Arbore.canvas|Arbore]]
#### **Opearatii cu Cataloage**
- Create
- Link
- Unlink
#### **Memorie externa**
