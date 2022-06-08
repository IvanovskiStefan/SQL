use master
DROP DATABASE IF EXISTS [SEDC_IS]
CREATE DATABASE SEDC_IS;

GO

USE SEDC_IS;

DROP TABLE IF EXISTS [dbo].[OrderDetails]
DROP TABLE IF EXISTS [dbo].[Orders]
DROP TABLE IF EXISTS [dbo].[BussinessEnteties]
DROP TABLE IF EXISTS [dbo].[Customers]
DROP TABLE IF EXISTS [dbo].[Employees]
DROP TABLE IF EXISTS [dbo].[Products]

GO

CREATE TABLE Custumers (
[Id] int IDENTITY (1,1) NOT NULL ,
[Name] nvarchar (100) NOT NULL,
[AccountNumber] nvarchar (100) NULL,
[City] nvarchar (100 ) null,
[RegionName] nvarchar (100 ) null,
[CostumerSize] nvarchar (10) null,
[PhoneNumber] nvarchar (20) null,
[IsActive] bit  NOT NULL,
constraint [PK_Costomers] PRIMARY KEY (Id)
)


CREATE TABLE Employees (

[Id] int IDENTITY (1,1) NOT NULL,
[FirstName] nvarchar (100) NOT NULL,
[LastName]nvarchar (100) NOT NULL,
[DateOfBirth] date NULL,
[Gender] nchar (1) NULL,
[HireDate] date NULL,
[NationalIdNumber] nvarchar (20) NULL

)


CREATE TABLE Products (

[Id] int IDENTITY (1,1) NOT NULL,
[Code] nvarchar (50) NULL,
[Name] nvarchar (100) NULL,
[Description] nvarchar (MAX) NULL,
[Weight] decimal (18,2) NULL,
[Price] decimal (18,2) NULL,
[Cost] decimal (18,2) NULL
constraint [PK_Products] PRIMARY KEY (Id)


)


CREATE TABLE Orders (

[Id] bigint IDENTITY (1,1) NOT NULL,
[OrderDate] date  NULL,
[Status] smallint  NULL,
[BussinesEntityId] int  NULL,
[CostumerId] int NULL,
[EmployeeId] int NULL,
[TotalPrice] decimal (18,2) NULL,
[Comment] nvarchar (MAX) NULL,

)

CREATE TABLE [OrderDetails] (

[Id] int IDENTITY (1,1) NOT NULL,
[OrderId] bigint NULL,
[ProductId] int NULL,
[Quantity] int NULL,
[Price] decimal (18,2) NULL,
constraint [PK_OrderDetails] PRIMARY KEY (Id)

)

CREATE TABLE [BussinessEntities] (

[Id] int IDENTITY (1,1) NOT NULL,
[Name] nvarchar(100) NULL,
[Region] nvarchar(1000) NULL,
[Zipcode] nvarchar(10) NULL,
[Size] nvarchar(10) NULL,
constraint [PK_BussinessEntity] PRIMARY KEY (Id)

)

GO

