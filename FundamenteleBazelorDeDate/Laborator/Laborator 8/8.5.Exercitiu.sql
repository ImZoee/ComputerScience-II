use Studenti
go

create  procedure procedure_ex5
@Id int
as
begin
    delete from Materie where ID = @Id
end
go
exec procedure_ex5 25
select * from Materie where Denumire = 'Robotica'