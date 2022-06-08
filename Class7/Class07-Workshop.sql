USE master

DROP DATABASE IF EXISTS MYPIZZADB_DB
GO

CREATE DATABASE MYPIZZADB_DB
GO

USE [MYPIZZADB_DB]
GO


---Tables
---Users,Roles, UserRoles, Pizzas,Sizes,Toppings,PizzaTopings,Orders

DROP TABLE IF EXISTS [dbo].[Users]
DROP TABLE IF EXISTS [dbo].[Roles]
DROP TABLE IF EXISTS [dbo].[UserRoles]
DROP TABLE IF EXISTS [dbo].[Pizzas]
DROP TABLE IF EXISTS [dbo].[PizzasSizes]
DROP TABLE IF EXISTS [dbo].[Toppings]
DROP TABLE IF EXISTS [dbo].[PizzaTopings]
DROP TABLE IF EXISTS [dbo].[Orders]
GO

--Users table

CREATE TABLE Users 
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	FirstName NVARCHAR (100) NOT NULL,
    LastName NVARCHAR (100) NOT NULL,
	Adress NVARCHAR (255) NOT NULL,
    Phone NVARCHAR (50) NOT NULL,
			 
)
CREATE TABLE ROLES
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR (100) NOT NULL
)

CREATE TABLE UserRoles
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	UserId int NOT NULL,
	RoleId int NOT NULL,
)

CREATE TABLE Pizzas 
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR (100) NOT NULL,
    Price decimal (5,2)  NOT NULL,
	SizeId SMALLINT  NOT NULL,
			 
)

CREATE TABLE PizzaSizes 
(
	Id SMALLINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR (10) NOT NULL,

			 
)

CREATE TABLE Toppings 
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[Name] NVARCHAR (100) NOT NULL,
    Price decimal (5,2)  NOT NULL,
				 
)

CREATE TABLE PizzaToppings 
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	PizzaId INT NOT NULL,
    ToppingId INT NOT NULL
				 
)

CREATE TABLE Orders
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Price DECIMAL (18,2) NOT NULL,
	IsDelivered	bit NOT NULL,
	UserId int NOT NULL,
	DateCreated datetime NOT NULL
)

CREATE TABLE OrderDetails
(
	Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
	OrderId int NOT NULL,
	PizzaId int not null,
	
)
GO

-- CREATE RE;ATOPSHIPS

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_User FOREIGN KEY (UserId)
REFERENCES Users(Id)
GO

ALTER TABLE Pizzas ADD CONSTRAINT FK_Pizzas_PizzaSize FOREIGN KEY (SizeId)
REFERENCES PizzaSizes(Id)
GO

ALTER TABLE OrderDetails ADD CONSTRAINT FK_OrderDetails_Pizza FOREIGN KEY (PizzaId)
REFERENCES Pizzas(Id)
GO

ALTER TABLE OrderDetails ADD CONSTRAINT FK_OrderDetails_Order FOREIGN KEY (OrderId)
REFERENCES Orders(Id)
GO

ALTER TABLE PizzaToppings ADD CONSTRAINT FK_PizzaToppings_Pizza FOREIGN KEY (PizzaId)
REFERENCES Pizzas(Id)
GO
ALTER TABLE PizzaToppings ADD CONSTRAINT FK_PizzaToppings_Topping FOREIGN KEY (ToppingId)
REFERENCES Toppings(Id)
GO

ALTER TABLE UserRoles ADD CONSTRAINT FK_UserRoles_User FOREIGN KEY (UserId)
REFERENCES Users(Id)
GO

ALTER TABLE UserRoles ADD CONSTRAINT FK_UserRoles_Roles FOREIGN KEY (RoleId)
REFERENCES Roles(Id)
GO


