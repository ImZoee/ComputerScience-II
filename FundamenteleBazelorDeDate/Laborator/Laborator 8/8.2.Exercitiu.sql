create procedure procedure_ex2
@IdFacultate int,
@Nume nvarchar(50),
@Prenume nvarchar(50),
@Curs bit,
@Laborator bit
as
begin
    if(@Curs = 1 or @Laborator = 1)
    begin
        INSERT INTO Profesor (IdFacultate, Nume, Prenume, Curs, Laborator)
        VALUES (@IdFacultate, @Nume, @Prenume, @Curs, @Laborator);
    end
    else
    begin
        print 'Profesorul trebuie sa aiba cel putin un curs sau un laborator'
    end
end
go
exec procedure_ex2
@IdFacultate = 1,
@Nume = 'Popescu',
@Prenume = 'Ion',
@Curs = 0,
@Laborator =1

select * from Profesor where nume = 'Popescu'