-Creare tabela virtuala
create view VStud
as
select * from Student

--Modificari tabela virtuala
alter view VStud
as
select * from Student

--Putem face insert in tabel doar daca sunt 1 la 1
insert into VStud (IdFacultate, Nume, Prenume, Email, NrTelefon, DataNaterii,
AnInmatriculare, Grupa, Buget, TaxaLaZi)values
(2,'Zamfir','Lidia','ZamfirLidia@myaddr.ro','761611280','2001-9-21',2021,21,1,0)

--update vedere
update VStud set Nume = 'Iliescu', Email = 'IliescuLidia@myaddr.ro', NrTelefon
= '767771280' where ID = (select TOP(1) ID from VStud order by id desc)

--Delete
delete from VStud
where ID = (select TOP(1) ID from VStud order by id desc)

select * from VStud

--Join cu 2 Tabele
create view ProfesoriDinFacultate(IdProf, IdFac, Nume, Prenume, Curs,
Laborator, ID, Denumire, Adresa, Specializare, NrAni) AS select P.ID,
P.IdFacultate, P.Nume, Prenume, Curs, Laborator, F.ID, Denumire, Adresa,
Specializare, NrAni from Profesor as P inner join Facultate as F on F.ID
= P.IdFacultate

--Insertul se face in cate un tabel
insert into ProfesoriDinFacultate (IdFac, Nume,
Prenume, Curs, Laborator)
values ( 1, 'Danescu', 'Vlad', 1,1)

update ProfesoriDinFacultate set Nume = 'Ionescu' where IdProf = 15 --OK

delete From ProfesoriDinFacultate where IdProf = 15

select * from ProfesoriDinFacultate

create view ProfesoriSiFacultate(Nume, Prenume, Facultate, Specializare, NrAni) AS
select Nume, Prenume, Denumire, Specializare, NrAni from Profesor as P, Facultate
as F where F.ID = P.IdFacultate
update ProfesoriSiFacultate set Nume = 'Calinescu' where Nume = 'Ionescu'

create VIEW MedieSemestruI2021_2022(IdStud, Student, Grupa, Media, NrExamene)
AS
SELECT S.ID, Nume+' '+Prenume, Grupa, AVG(CAST(Nota as numeric)), count(*)
FROM Student AS S,Catalog AS C
WHERE S.ID=C.IdStudent and YEAR(DataNotare) = 2022 and Month(DataNotare)= '02'
GROUP BY S.ID, Nume+' '+Prenume, Grupa

select * from MedieSemestruI2021_2022
