create view NoteStudenti as
select
    s.Nume as NumeStudent,
    s.Prenume as PrenumeStudent,
    m.Denumire as Materie,
    m.Credite,
    c.Nota,
    c.DataNotare from Student s
inner join Catalog C on s.ID = C.IdStudent
inner join Materie M on C.IdMaterie = M.ID
where m.AnDeStudiu = 'I' and m.Semestru = 'II'

select * from NoteStudenti