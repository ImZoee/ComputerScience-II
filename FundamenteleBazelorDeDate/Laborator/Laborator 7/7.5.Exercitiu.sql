create view ProfesoriMaterii as
select
    p.Nume + ' ' +p.Prenume as Profesor,
    m.Denumire as Materie from Profesor p
inner join MateriiProfesori MP on p.ID = MP.IdProfesor
inner join Materie M on MP.IdMaterie = M.ID

select * from ProfesoriMaterii