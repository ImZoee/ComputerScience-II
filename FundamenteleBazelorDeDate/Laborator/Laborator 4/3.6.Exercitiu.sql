create database Intreprindere
go
use Intreprindere

create table SECTII(
    IdSectie int primary key,
    Nume nvarchar(20) not null
)
insert into SECTII(IdSectie, Nume) values
    (1,'Asamblare'),
    (2,'Testare'),
    (3,'Design'),
    (4,'Achizitii'),
    (5,'Logistica')

create table PROIECTIE(
    IdProiect int primary key,
    Denumire nvarchar(40) not null,
    Termen date not null,
    Buget numeric(10,2) not null
)
insert into PROIECTIE(IdProiect, Denumire, Termen, Buget) values
    (1,'ThinkPad X1 Carbon','2025/11/01',60000.00),
    (2,'MacBook Pro M3','2025/05/30',10000.00),
    (3,'Dell XPS 15','2026/01/01',30000.00),
    (4,'HP Spectre x360','2025/05/01',7000.00),
    (5,'Asus ROG Zephyrus','2025/09/30',60000.00)

create table FURNIZORI(
    IdFurnizor int primary key,
    Nume nvarchar(20) not null,
    Prenume nvarchar(20) not null,
    Adresa nvarchar(40) not null
)
insert into FURNIZORI(IdFurnizor, Nume, Prenume, Adresa) values
    (1,'Popescu','Ion','Strd. 1 Decembrie 1918, Nr. 14'),
    (2,'Ionescu','Marian','Strd. Doljului, Nr. 8'),
    (3,'Bordeiasu','Cosmin', 'Strd. Serban Voda, Nr. 70'),
    (4,'Radu','Izabela','Strd. Paltinisi, Nr. 10'),
    (5,'Tudorica','Radu','Strd. Tudor Vladimirescu, Nr.60')
insert into FURNIZORI(idfurnizor, nume, prenume, adresa) values
    (6, 'Paunescu', 'Vergica','Bucuresti'),
    (7, 'Radut','Cristian','Bucuresti'),
    (8, 'Gigi','Becali','Bucuresti')

create table COMPONENTE(
    IdComponenta int primary key,
    Denumire nvarchar(40) not null,
    Descriere nvarchar(40) not null
)
insert into COMPONENTE(IdComponenta, Denumire, Descriere) values
    (1,'Procesor','Intel i7 12th Gen'),
    (2,'Memorie RAM','32GB DDR4'),
    (3,'SSD','512GB NVMe'),
    (4,'Baterie','Li-ion 5000mAh'),
    (5,'Ecran','15" Full HD IPS')
insert into COMPONENTE(idcomponenta, denumire, descriere) values
    (6, 'Condensator', 'Condensator de 100uF'),
    (7, 'Condensator', 'Condensator de 400uF'),
    (8,'Rezistenta','Rezistenta de 220 ohmi'),
    (9,'Rezistenta','Rezistenta de 180ohmi')

create table PRODUSE(
    IdProdus int primary key,
    Denumire nvarchar(40) not null,
    Descriere nvarchar(40) not null,
)
insert into PRODUSE(IdProdus, Denumire, Descriere) values
    (1,'ThinkPad X1 Carbon','UltraBook premium, bussines-class'),
    (2,'MacBook Pro M3','Laptop performant'),
    (3,'Dell XPS 15','Laptop high-end'),
    (4,'HP Spectre x360','Laptop 2 in 1 convertibil'),
    (5,'Asus ROG Zephyrus','Laptop gaming')

create table CLIENTI(
    IdClient int primary key,
    Nume nvarchar(20) not null,
    Prenume nvarchar(20) not null,
    Adresa nvarchar(40) not null
)
insert into CLIENTI(IdClient, Nume, Prenume, Adresa) values
    (1,'Vasile','Ionescu','Strd. Aviatorilor, Nr. 8'),
    (2,'Gheorghe','Cristian','Bd. Dacia, Nr. 19'),
    (3,'Pislaru','Matei','Bd. Mageru, Nr. 88'),
    (4,'Popa','Crisitiana','Strd. George Enescu, Nr. 20'),
    (5, 'Stefan','Marius','Strd. Revolutiei, Nr. 78')
insert into CLIENTI(idclient, nume, prenume, adresa) values
    (6,'Vasile','Ion','Bucuresti'),
    (7,'Aristote','Paul','Bucuresti')

create table ANGAJATI(
    IdAngajat int primary key,
    Nume nvarchar(20) not null,
    Prenume nvarchar(20) not null,
    DataNasterii date not null,
    Adresa nvarchar(40) not null,
    Functie nvarchar(20) not null,
    Salariu numeric(10,2) not null,
    IdSectie int not null,
    foreign key (IdSectie) references  SECTII(IdSectie)
)
insert into ANGAJATI(IdAngajat, Nume, Prenume, DataNasterii, Adresa, Functie, Salariu, IdSectie) values
    (1,'Popa','Alexandru','1985/03/22','Strd. Transilvaniei, Nr. 9','Inginre',7000.00,3),
    (2,'Marinescu','Adrian','1990/07/15','Bd. Timisoara, Nr. 14','Tehnician',1800.00,1),
    (3,'Gheorghe','Simona','1997/09/10','Strd. Dorobanti, Nr. 30','Secretara',8000.00,4),
    (4,'Iordache','Marius','2004/11/28','Bd. Calea Bucuresti, Nr. 19','Manager',10000.00,2),
    (5,'Enache','Laura','1990/01/01','Strd. Universitatii, Nr. 61','Vanzator',4000.00,5),
    (6, 'Radu', 'Florin', '1987-04-12', 'Str. Mihai Bravu 25', 'Inginer', 7200.00, 3),
    (7, 'Dima', 'Gabriela', '1993-08-30', 'Bd. Decebal 10', 'Secretara', 4000.00, 4),
    (8, 'Petrescu', 'Andrei', '1985-12-15', 'Str. Primaverii 42', 'Inginer', 9000.00, 3),
    (9, 'Iliescu', 'Monica', '1990-06-22', 'Str. Viitorului 18', 'Secretara', 4100.00, 4),
    (10, 'Lungu', 'Bogdan', '1992-03-14', 'Bd. Carol I 33', 'Inginer', 7500.00, 3),
    (11, 'Marian', 'Simion', '1989-07-19', 'Str. Plevnei 8', 'Inginer', 7800.00, 3),
    (12, 'Oprea', 'Diana', '1995-11-05', 'Bd. Republicii 21', 'Secretara', 4200.00, 4),
    (13, 'Dragomir', 'Victor', '1984-02-28', 'Str. Independentei 7', 'Inginer', 8600.00, 3),
    (14, 'Costache', 'Elena', '1991-09-12', 'Str. Dorobanti 15', 'Secretara', 3900.00, 4),
    (15, 'Stanescu', 'Cristian', '1986-05-25', 'Bd. Unirii 40', 'Inginer', 8200.00, 3)

create table SECRETARE(
    IdSecretara int primary key,
    IdAngajat int not null,
    foreign key (IdAngajat) references ANGAJATI(IdAngajat),
    VitezaRedactare int not null
)
insert into SECRETARE(IdSecretara, IdAngajat, VitezaRedactare) values
    (1,3,70),
    (2,7,64),
    (3,9,50),
    (4,12,90),
    (5,14,45)

create table INGINERI(
    IdInginer int primary key,
    IdAngajat int not null,
    foreign key (IdAngajat) references ANGAJATI(IdAngajat),
    Specialitate nvarchar(20) not null
)
insert into INGINERI(IdInginer, IdAngajat, Specialitate) values
    (1,1,'Hardware'),
    (2,6,'Software'),
    (3,8,'Electrician'),
    (4,10,'Software'),
    (5,15,'Hardware')

create table DEPENDENTI(
    IdDependent int primary key,
    IdAngajat int not null,
    foreign key (IdAngajat) references ANGAJATI(IdAngajat),
    Nume nvarchar(20) not null,
    Prenume nvarchar(20) not null,
    DataNasterii date not null,
    GradRudenie nvarchar(20) not null
)
insert into DEPENDENTI(IdDependent, IdAngajat, Nume, Prenume, DataNasterii, GradRudenie) values
    (1,1,'Popa','Marian','2000/11/10','Fiu'),
    (2,4,'Iordache','Sorina','2002/05/11','Sora'),
    (3,12,'Opera','Mirel','2009/01/01','Var'),
    (4,7,'Dima','Daniel','1992/09/01','Sot'),
    (5,9,'Dinca','Alin','2002/04/15','Var')

create table ACTIVITATI(
    IdActivitati int primary key,
    IdProiect int not null,
    foreign key (IdProiect) references PROIECTIE(IdProiect),
    IdAngajat int not null,
    foreign key (IdAngajat) references ANGAJATI(IdAngajat),
    Ore time not null
)
insert into ACTIVITATI(IdActivitati, IdProiect, IdAngajat, Ore) values
    (1,1,1,'08:00'),
    (2,4,6,'10:30'),
    (3,2,10,'12:00'),
    (4,5,8,'14:00'),
    (5,3,15,'07:00')

create table ACHIZITII(
    IdAchizitie int primary key,
    IdFurnizor int not null,
    foreign key (IdFurnizor) references FURNIZORI(IdFurnizor),
    IdComponenta int not null,
    foreign key (IdComponenta) references COMPONENTE(IdComponenta),
    IdAchizitor int not null,
    foreign key (IdAchizitor) references ANGAJATI(IdAngajat),
    Data date not null,
    NrComponente int not null,
    PretUnitar numeric(10,2) not null
)
insert into ACHIZITII(IdAchizitie, IdFurnizor, IdComponenta, IdAchizitor, Data, NrComponente, PretUnitar) values
    (1, 1, 1, 2, '2025-01-10', 280, 250.00),
    (2, 2, 2, 2, '2025-02-15', 100, 75.00),
    (3, 3, 3, 2, '2025-03-20', 200, 120.00),
    (4, 4, 4, 2, '2025-04-25', 60, 90.00),
    (5, 5, 5, 2, '2025-05-30', 40, 200.00)
insert into ACHIZITII(idachizitie, idfurnizor, idcomponenta, idachizitor, data, nrcomponente, pretunitar) values
    (6,1,6,2,'2025-06-15',250,500),
    (7,4,7,3,'2025-06-15',300,700),
    (8,3,9,4,'2025-05-10',400,600),
    (9,5,8,5,'2025-04-01',400,800)


create table COMPOZITII(
    IdCompozitie int primary key,
    IdComponenta int not null,
    foreign key (IdComponenta) references COMPONENTE(IdComponenta),
    IdProdus int not null,
    foreign key (IdProdus) references PRODUSE(IdProdus),
    NrComponente int not null,
)
insert into COMPOZITII(IdCompozitie, IdComponenta, IdProdus, NrComponente) values
    (1, 3, 1, 1),
    (2, 1, 1, 2),
    (3, 5, 1, 1),
    (4, 2, 1, 1),
    (5, 4, 1, 1)

create table VANZARI(
    IdVanzare int primary key,
    IdProdus int not null,
    foreign key (IdProdus) references PRODUSE(IdProdus),
    IdClient int not null,
    foreign key (IdClient) references CLIENTI(IdClient),
    IdVanzator int not null,
    foreign key (IdVanzator) references ANGAJATI(IdAngajat),
    DataVanzare date not null,
    NrProduse int not null
)
insert into VANZARI(IdVanzare, IdProdus, IdClient, IdVanzator, DataVanzare, NrProduse) values
    (1, 1, 1, 5, '2025-06-10', 10),
    (2, 2, 2, 5, '2025-07-12', 5),
    (3, 3, 3, 5, '2025-08-14', 7),
    (4, 4, 4, 5, '2025-09-16', 3),
    (5, 5, 5, 5, '2025-10-18', 8)

select F.Nume, F.Prenume, F.Adresa from FURNIZORI F
join ACHIZITII A on F.IdFurnizor = A.IdFurnizor
join COMPONENTE C on A.IdComponenta = C.IdComponenta
where C.Denumire = 'Rezistenta'
and A.NrComponente >=150
    