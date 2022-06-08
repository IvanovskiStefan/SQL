USE [SEDC_IS]

ALTER TABLE Products_test
ADD CONSTRAINT UC_Products_Test_Name
UNIQUE ([Name])

GO

--INSERT INTO Products_Test ([Name])

--VALUES ('Musli bar') // ova ke frli greska !!!