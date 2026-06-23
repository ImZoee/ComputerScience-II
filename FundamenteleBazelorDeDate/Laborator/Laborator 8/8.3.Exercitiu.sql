use Studenti
go
create procedure procedure_ex3
@IDMaterie int,
@Denumire nvarchar(50),
@An nvarchar(3),
@Semestru nvarchar(2),
@Credite int,
@Examen bit,
@Colocviu bit
as
begin
    update Materie
    set Denumire = @Denumire,
        AnDeStudiu = @An,
        Semestru = @Semestru,
        Credite = @Credite,
        Examen = @Examen,
        Colocviu = @Colocviu
    where ID = @IDMaterie
end
go
exec procedure_ex3
    @IDMaterie = 1,
    @Denumire = 'Robotica Avansata',
    @An = 'II',
    @Semestru = 'II',
    @Credite = 6,
    @Examen = 1,
    @Colocviu = 1
select * from Materie where Denumire = 'Robotica Avansata'