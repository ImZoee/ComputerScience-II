## Implementarea unui sistem de operare care utilizeaza sistemul de fisiere FAT 
Vom stabili 2 parametrii:
- UA->Dimensiunea unitatii de alocare(bytes)
- Numar UA->Cate unitati de alocare sa alocam va avea hardisk-ul
Vom alege UA = 16 respectiv Numar UA = 4096 puterea lui 2
#### HDD
1UA = 16bytes

| 0       | 1   | 2   | ... | ... | 4094 | 4095 |
| ------- | --- | --- | --- | --- | ---- | ---- |
| 16Bytes | 16  | 16  | ... | ... | 16   | 16   |

```
Dim_HDD = UA*NR_UA = 16*496 = 65536 bytes = 64 kb
```
Vom implementa tabela FAT care va avea cate o intrare sau locatie pentru fiecare unitate de alocare de HardDsik. Scopurile FAT sunt urmatoarele:
- Gestioneaza zonele libere(UA) de pe HDD pentru a putea stoca noile fisiere
- Rezerva un spatiu pe HDD pentru stocarea: FAT, ROOT(in acest spatiu, nu se pastreaza fisiere).
- Simuleaza o lista simplu inlantuita care pastreaza un fisier care are nevoie de mai mult de o unitate de alocare
- Se marcheaza unitatile de alocare defecte/stricate/care nu mai pot fi folosite
- Indicator pentru ultima unitate de alocare folosita la stocarea unui fisier
#### FAT

| 0   | 1   | 2   | 3   | ......... | 506 | 507 | ......... | 610 | 611 | ......... | 4094 | 4095 |
| --- | --- | --- | --- | --------- | --- | --- | --------- | --- | --- | --------- | ---- | ---- |
|     |     |     |     |           | 507 | 508 |           | 611 | 3   |           |      |      |
Numerele din cadrul structurii FAT se gasesc in intervalul `[0 NR_UA]` iar in cazul nostru `[0, 4095` ceea ce inseamna ca in fiecare locatie din FAT trebuie sa aiba 2 bytes ca spatiu alocat
`DIM_FAT = NR_UA * DIM_LOCATIE_FAT = 4096 * 2 = 8192bytes`
**OBS:** Tabela FAT si ROOT trebuie pastrate pe HDD si orice modificare a lor trebuie de asemenea facuta sau salvata pe HDD

| Nume Camp              | Nume | Extensie | Marime | Primu UA | Attr |
| ---------------------- | ---- | -------- | ------ | -------- | ---- |
| Dim<br>Camp<br>Cluster | 8    | 3        | 2      | 2        | 1    |
`8+3+2+2+1=16UA`
Fiecare fisier creat va consuma 1UA ca spatiu
Vom stabili o dimensiune fixa pentru tabela ROOT cu valoarea de 64 de UA echivalent cu 64 de fisiere