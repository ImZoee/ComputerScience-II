use Studenti
go

create  procedure procedure_ex6
@Id int
as
begin
    delete from Profesor where ID = @Id
end
go
exec procedure_ex6 15
select * from Profesor where id = 15