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

GO

insert into Products_Test ([Name],Price)
Values ('Musli bar',100),('Coca-Cola',30),('Chocolate bar',50)

select *  from Products_Test 
where price > 100

select *  from Products_Test 
where price < 100  and price > 50

select *  from Products_Test 
where price between 20 and 100

select *  from Products_Test 
where price <> 50

select *  from Products_Test 
where [Name]  like  'm%'

select *  from Products_Test 
where [Name]  like  '%r'

select *  from Products_Test 
where [Name]  like  '%ba%'