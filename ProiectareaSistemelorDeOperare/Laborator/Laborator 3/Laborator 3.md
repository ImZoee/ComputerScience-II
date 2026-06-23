# Fisiere Binare
1. Canale de comuniacatii:
	- fin = open("fin.bin","r b") => citire;
	- fout = open("fout.bin", "w b") => scriere;
	- fout = open("fout.bin","a b") => adaugare;
2. Modul de aranjare a octetilor:
	- little endian => pune cei mai putin semnificativi octeti primi;
	- big endian => pune cei mai semnificativi octeti primi;

Tip de date:

| 1. unnsigned char<br>2. short int<br>3. unnsigned short int<br>4. int<br>5. unnsingned int<br>6. long long<br>7. unnsigned long long<br>8. double<br>9. float | 1. B<br>2. h<br>3. H<br>4. i<br>5. I<br>6. q<br>7. Q<br>8. d<br>9. f | 1. 8<br>2. 16<br>3. 16<br>4. 32<br>5. 32<br>6. 64<br>7. 64<br>8. 64<br>9. 32 | 1. 1<br>2. 2<br>3. 2<br>4. 4<br>5. 4<br>6. 8<br>7. 8<br>8. 8<br>9. 4<br> |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
|                                                                                                                                                               |                                                                      |                                                                              |                                                                          |

 Fie X = 283676191^10 
 = 00010000111010001000111000011111 (baza2) 
 = 10E88E1F (baza16)
 =Big endian
 

| Adrese | Bing endien  |
| ------ | ------------ |
| 0x1001 | ------------ |
| 0x1002 | 10           |
| 0x1003 | E8           |
| 0x1004 | 8E           |
| 0x1005 | 1F           |
| 0x1006 |              |

| Adrese | Little endien |
| ------ | ------------- |
| 0x1001 | ------------- |
| 0x1002 | 1F            |
| 0x1003 | 8E            |
| 0x1004 | E8            |
| 0x1005 | 10            |
| 0x1006 |               |
Modul struct prezinta 2 metode importante:
- struct.pack() => transforma datele in binar
- struct.unpack() => preia datele binare si le intoarce
Parametrii celor doua metode:
- un string format din: 
	- little endian "<"
	- big endian "<" + tip date: <q,<h.
#### Citire date
date =fin.read