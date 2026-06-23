use OnlineShop

ALTER TABLE Comanda ADD Datacomanda DATE;

CREATE TRIGGER ApplyDiscount
ON ProduseComandate
AFTER INSERT
AS
BEGIN
    DECLARE @currentDate DATE = GETDATE();
    DECLARE @discountEndDate DATE = DATEADD(DAY, 7, @currentDate);
    UPDATE ProduseComandate
    SET PretTotal = PretTotal * 0.95
    FROM ProduseComandate pc
    INNER JOIN Comanda c ON pc.IdComanda = c.ID
    WHERE c.Datacomanda BETWEEN @currentDate AND @discountEndDate
      AND pc.ID IN (SELECT ID FROM inserted);
END;

INSERT INTO Comanda (ID, IdClient, AdresaLivrare, Judet, Datacomanda)
VALUES (15, 1, 'Str Noua nr 123', 'DJ', GETDATE() + 3);

INSERT INTO ProduseComandate (ID, IdComanda, IdProdus, Cantitate, PretTotal)
VALUES (24, 15, 1, 2, (SELECT Pret FROM Produs WHERE ID = 1) * 2);

SELECT * FROM ProduseComandate WHERE IdComanda = 15;

SELECT * FROM ProduseComandate WHERE ID = 24;