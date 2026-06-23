create database OnlineShop;
go
use OnlineShop;
drop table if exists Cont;
drop table if exists ProduseComandate;
drop table if exists Comanda;
drop table if exists Produs;
drop table if exists Depozit;
drop table if exists Client;

create table Client(
ID int Primary Key,
Nume nvarchar(20) not null,
Prenume nvarchar(20) not null,
AdresaFacturare nvarchar(50) not null,
Judet nvarchar(2),
NrTel nvarchar(15));


create table Depozit(
ID int Primary Key,
Denumire nvarchar(20) not null,
Adresa nvarchar(150) not null,
Judet nvarchar(2));


create table Cont(
ID int Primary Key,
IdClient int not null,
Foreign Key (IdClient) references Client(ID),
Email nvarchar(30) not null,
Pass nvarchar(20) not null,
LoginDate date);


create table Comanda(
ID int Primary Key,
IdClient int not null,
Foreign Key (IdClient) references Client(ID),
AdresaLivrare nvarchar(50) not null,
Judet nvarchar(2));


create table Produs(
ID int Primary Key,
idDepozit int,
Foreign Key (idDepozit) references Depozit(ID),
Denumire nvarchar(50) not null,
Specificatii nvarchar(500),
CantitateDisponibila int not null,
Pret numeric(10,2) not null);


create table ProduseComandate(
ID int Primary Key,
IdComanda int not null,
Foreign Key (IdComanda) references Comanda(ID),
IdProdus int not null,
Foreign Key (IdProdus) references Produs(ID),
Cantitate int not null,
PretTotal numeric(10,2) not null);



select * from Client
Select * from Comanda
Select * from Cont
Select * from Depozit
Select * from Produs
Select * from ProduseComandate

/* INSERT*/

USE OnlineShop;

/*in Depozit*/
INSERT INTO Depozit(ID,Denumire,Adresa,Judet) VALUES (1, 'Depozit Craiova', 'Str Depozitului nr2', 'DJ')
INSERT INTO Depozit(ID,Denumire,Adresa,Judet) VALUES (2, 'Depozit Bucuresti', 'Str Depozitului nr5', 'B')
INSERT INTO Depozit(ID,Denumire,Adresa,Judet) VALUES (3, 'Depozit Cluj', 'Str Depozitului nr7', 'CJ')
INSERT INTO Depozit(ID,Denumire,Adresa,Judet) VALUES (4, 'Depozit Pitesti', 'Str Depozitului nr9', 'AG')

/*in Produs*/
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (1,1,'Televizor Samsung 4k', 'Televizor Samsung 43AU8072, 108 cm, Smart, 4K Ultra HD, LED, Clasa G', 50, 1799.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (2,1, 'Televizor Panasonic', 'Televizor Panasonic TX-58JX800E, 146 cm, Smart Android, 4K Ultra HD, LED, Clasa G', 50, 2999.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (3,2, 'Televizor Samsung QLED', 'Televizor Samsung 43Q60A, 108 cm, Smart, 4K Ultra HD, QLED, Clasa G', 50, 2199.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (4,1, 'Telefon Motorola Moto E7', 'Telefon mobil Motorola Moto E7 Power, Dual SIM, 64GB, 4GB RAM, 5000 mAh, 4G, Tahiti Blue', 150, 549.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (5,2, 'Telefon Samsung Galaxi A52s', 'Telefon mobil Samsung Galaxy A52s, Dual SIM, 128GB, 6GB RAM, 5G, Black', 150, 1549.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (6,2,'Telefon Xiaomi Redmi 9A', 'Telefon mobil Xiaomi Redmi 9A, Dual SIM, 32GB, 4G, Carbon Grey', 150, 429.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (7,1, 'Telefon Apple iPhone 13Pro', 'Telefon mobil Apple iPhone 13 Pro, 128GB, 5G, Graphite', 150, 5479.99)
INSERT INTO Produs (ID, idDepozit, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (8,1, 'Laptop Allview', 'Allbook H cu procesor Intel Celeron N4000 pana la 2.60 GHz, 15.6", Full HD, 4GB, 256GB SSD, Intel UHD 600, Ubuntu, Grey', 50, 899.99)
INSERT INTO Produs (ID, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (9,'Laptop Lenovo IdeaPad 3', 'Laptop ultraportabil Lenovo IdeaPad 3 15ITL6 cu procesor Intel Pentium Gold 7505, 15.6", Full HD, 8GB, 256GB SSD, Intel UHD Graphics, Free DOS, Arctic Grey', 150, 1649.99)
INSERT INTO Produs (ID, Denumire, Specificatii, CantitateDisponibila, Pret) VALUES (10,'Laptop ASUS E510MA','Laptop ASUS E510MA cu procesor Intel® Celeron® N4020, 15.6", HD, 4GB, 256GB SSD, Intel® UHD Graphics 600, No OS, Star Black', 150, 1190)



/*in Client*/
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(1, 'Popescu', 'George', 'Strada Mea, nr 13', 'DJ', '0762267890')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(2, 'Tudorescu', 'Dana', 'Strada Ta, nr 12', 'VL', '0763367890')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(3, 'Savinescu', 'Ioana', 'Strada Lui, nr 17', 'DJ', '0762447890')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(4, 'Ionescu', 'Ana', 'Strada Anului, nr 33', 'GJ', '0762557890')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(5, 'Eminescu', 'Petre', 'Strada Lor, nr 63', 'OT', '0762264590')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(6, 'Iliescu', 'Daniel', 'Strada Mea, nr 113', 'DJ', '0762456690')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(7, 'Vladimirescu', 'Tudor', 'Strada Ta, nr 212', 'VL', '0763397890')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(8, 'Sava', 'Ioana', 'Strada Lui, nr 317', 'DJ', '0762447190')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(9, 'Rotaru', 'Victor', 'Strada Anului, nr 433', 'GJ', '0765557890')
INSERT INTO Client(ID, Nume, Prenume, AdresaFacturare, Judet, NrTel) VALUES(10, 'Stancu', 'Adrian', 'Strada Lor, nr 563', 'OT', '0762264890')

/*in Cont*/
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(1,1,'popescu@myaddr.ro', 'fake pass', '2022-01-11')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(2,2,'tudorescu@myaddr.ro', 'fake pass', '2022-01-12')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(3,3,'savinescu@myaddr.ro', 'fake pass', '2022-01-13')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(4,4,'ionescu@myaddr.ro', 'fake pass', '2022-01-14')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(5,5,'eminescu@myaddr.ro', 'fake pass', '2022-01-15')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(6,6,'iliescu@myaddr.ro', 'fake pass', '2022-01-16')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(7,7,'vladimirescu@myaddr.ro', 'fake pass', '2022-01-17')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(8,8,'sava@myaddr.ro', 'fake pass', '2022-01-18')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(9,9,'rotaru@myaddr.ro', 'fake pass', '2022-01-19')
INSERT Cont(ID, IdClient, Email, Pass, LoginDate) VALUES(10,10,'stancu@myaddr.ro', 'fake pass', '2022-01-20')

/*in Comanda*/
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (1, 1, 'Str Mea nr 11', 'DJ')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (2, 1, 'Str Lui nr 13', 'MH')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (3, 1, 'Str Lor nr 11', 'OT')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (4, 2, 'Str Noastra nr 11', 'AG')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (5, 2, 'Str Tuturor nr 17', 'CJ')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (6, 3, 'Str Nimanui nr 16', 'TM')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (7, 4, 'Str Voastra nr 51', 'AR')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (8, 5, 'Str Altora nr 14', 'DJ')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (9, 6, 'Str Acelora nr 41', 'DJ')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (10, 7, 'Str Acestora nr 21', 'DJ')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (11, 7, 'Str Mea nr 41', 'IF')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (12, 7, 'Str Ta nr 112', 'B')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (13, 7, 'Str Lui nr 15', 'BV')
INSERT INTO Comanda(ID, IdClient, AdresaLivrare, Judet) VALUES (14, 7, 'Str Mea nr 31', 'GJ')

/*in ProduseComandate*/
INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(1,1,1,2,(select Pret from Produs where id=1)*2)
INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(2,1,8,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =2)*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =2)))
where id =2

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(3,2,2,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(4,2,3,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(5,2,10,10,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(6,3,9,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)


INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(7,3,6,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(8,4,3,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(9,5,3,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(10,5,4,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(11,6,5,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)


INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(12,6,6,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(13,7,7,5,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(14,8,8,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(15,8,9,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(16,9,9,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(17,10,9,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(18,11,1,3,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(19,12,2,3,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(20,12,7,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(21,13,4,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(22,14,6,1,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)

INSERT INTO ProduseComandate(ID, IdComanda, IdProdus, Cantitate, PretTotal) VALUES(23,14,8,2,0)
update ProduseComandate set
PretTotal = (
(select Cantitate from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))*
(select Pret from Produs where id=(select IdProdus from ProduseComandate where id =(select top(1) id from ProduseComandate order by ID desc))))
where id =(select top(1) id from ProduseComandate order by ID desc)


/*Join*/
select * from Client
select * from Cont

select * from Client inner join Cont on Client.ID = Cont.IdClient
select Client.ID, Nume, Prenume,Email from Client inner join Cont on Client.ID = Cont.IdClient

select * from Client right join Cont on Client.ID = Cont.IdClient
select * from Client left join Cont on Client.ID = Cont.IdClient
select * from Client full join Cont on Client.ID = Cont.IdClient


select * from Produs
select * from Depozit

select * from Produs inner join Depozit on Produs.idDepozit = Depozit.ID
select * from Produs left join Depozit on Produs.idDepozit = Depozit.ID
select * from Produs right join Depozit on Produs.idDepozit = Depozit.ID
select * from Produs full join Depozit on Produs.idDepozit = Depozit.ID

select * from Comanda
select * from Client

select * from Client left join Comanda on Comanda.ID = Client.ID

select * from Comanda
select * from Client
SELECT * from ProduseComandate
SELECT * from Produs

select * from Client inner join Comanda C on Client.ID = C.IdClient
inner join ProduseComandate PC on C.ID = PC.IdComanda
inner join Produs P on PC.IdProdus = P.ID

select Nume, Prenume,NrTel,AdresaLivrare,Denumire,Cantitate from Client inner join Comanda C on Client.ID = C.IdClient
inner join ProduseComandate PC on C.ID = PC.IdComanda
inner join Produs P on PC.IdProdus = P.ID
