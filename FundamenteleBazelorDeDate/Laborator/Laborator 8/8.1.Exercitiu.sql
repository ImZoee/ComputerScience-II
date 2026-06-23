use Studenti
go

create procedure procedure_ex1
@IDFacultate int,
@Denumire nvarchar(50),
@An nvarchar(3),
@Semestru nvarchar(2),
@Credite int,
@Examen bit,
@Colocviu bit
as
begin
    insert into Materie(IdFacultate,Denumire,AnDeStudiu,Semestru,Credite,Examen,Colocviu)
    values(@IDFacultate,@Denumire,@An,@Semestru,@Credite,@Examen,@Colocviu)
end
go
exec procedure_ex1 1,'Robotica','II','II',6,1,1

select * from Materie where Denumire = 'Robotica'
