
use studenti
go

create procedure procedure_ex4
    @id int,
    @idfacultate int,
    @nume nvarchar(20),
    @prenume nvarchar(20),
    @curs bit,
    @laborator bit
as
begin
    if exists (select 1 from profesor where id = @id)
    begin
        if (@curs = 1 or @laborator = 1)
        begin
            update profesor
            set idfacultate = @idfacultate,
                nume        = @nume,
                prenume     = @prenume,
                curs        = @curs,
                laborator   = @laborator
            where id = @id
        end
        else
        begin
            print 'Profesorul trebuie sa aiba cel putin un curs sau un laborator.'
        end
    end
    else
    begin
        print 'Profesorul nu exista.'
    end
end
go
exec procedure_ex4 15, 1, 'Ion', 'Popescu', 0, 1
select * from profesor where nume = 'Ion'