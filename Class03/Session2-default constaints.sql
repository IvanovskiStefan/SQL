USE SEDC_IS;
GO
DROP TABLE IF EXISTS [Products_Test];

CREATE TABLE Products_Test (

[Id] int IDENTITY (1,1) NOT NULL,
[Code] nvarchar (50) NULL,
[Name] nvarchar (100) NULL,
[Description] nvarchar (MAX) NULL,
[Weight] decimal (18,2) NULL,
[Price] decimal (18,2) NULL,
[Cost] decimal (18,2) NULL

)

INSERT INTO Products_Test ([Name], Price)
VALUES ('Chocolate bar',100), ('Musli bar',200)

GO

select * from Products_Test

ALTER TABLE Products_Test 
ADD CONSTRAINT DF_ProductTest_Weight 
DEFAULT 100 FOR [Weight]

GO

INSERT INTO Products_Test ([Name], Price)
VALUES ('Smoki',100), ('Snickers',200)

GO