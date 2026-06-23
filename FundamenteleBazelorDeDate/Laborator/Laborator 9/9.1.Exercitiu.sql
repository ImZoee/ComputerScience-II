use OnlineShop

CREATE TRIGGER UpdateCantitateDisponibila
ON ProduseComandate
AFTER INSERT
AS
BEGIN
    UPDATE Produs
    SET CantitateDisponibila = CantitateDisponibila - i.Cantitate
    FROM Produs
    INNER JOIN inserted i ON Produs.ID = i.IdProdus
END;

INSERT INTO ProduseComandate (ID, IdComanda, IdProdus, Cantitate, PretTotal)
VALUES (23, 13, 8, 3, 0);

SELECT * FROM Produs WHERE ID = 8;
