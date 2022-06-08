USE [SEDC_IS]

ALTER TABLE Products_Test
ADD CONSTRAINT CHK_ProductsTest_Price
CHECK (Price >= 0)

GO

INSERT INTO Products_Test ([Name], Price)
VALUES ('Coca-Cola',-10)

INSERT INTO Products_Test ([Name], Price)
VALUES ('Coca-Cola',70)

SELECT * FROM Products_Test