use OnlineShop

CREATE TRIGGER UpdateEmailOnNameChange
ON Client
AFTER UPDATE
AS
BEGIN
    UPDATE Cont
    SET Email = CONCAT(i.Nume, '.', i.Prenume, '@myaddr.ro')
    FROM Cont
    INNER JOIN inserted i ON Cont.IdClient = i.ID
    WHERE i.ID IN (SELECT ID FROM inserted)
          AND (UPDATE(Nume) OR UPDATE(Prenume));
END;

SELECT * FROM Cont WHERE IdClient = 1;

UPDATE Client
SET Nume = 'Ionescu', Prenume = 'Andrei'
WHERE ID = 1;

SELECT * FROM Cont WHERE IdClient = 1;