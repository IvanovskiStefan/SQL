CREATE DATABASE SEDC;

USE SEDC;

CREATE TABLE BussinessEntity (

Id int NOT NULL,
Name nvarchar(100) NUll,
Region nvarchar(100) NULL,
Zipcode nvarchar(100) NULL,
Size  nvarchar(10) NULL,

)

CREATE TABLE Employee (

Id int NOT NULL,
FirstName nvarchar(100) NOT NUll,
LastName nvarchar(100) NOT NUll,
DateOfBirth date NUll,
Gender  nchar(1) NULL,
HireDate date NULL,
NationalIdNumber nvarchar(20) NOT NULL

)

CREATE TABLE Product (

Id int NOT NULL,
Code nvarchar (50) NULL,
Name nvarchar (100) NULL,
Description nvarchar (MAX) NULL,
Weight decimal(18,2),
Price decimal(18,2),
Cost decimal(18,2),

)

CREATE TABLE Costumer (

Id int NOT NULL,
Name nvarchar(100) NOT NUll,
AccountNumber nvarchar(50) NULL,
City nvarchar(100) NULL,
RegionName nvarchar(100) NULL,
CostumerSize nvarchar(10) NULL,
PhoneNumber nvarchar(20) NULL,
isActive bit

)

CREATE TABLE [Order] (

Id int NOT NULL,
OrderDate datetime NULL,
Status smallint NULL,
BussinesEntityId int NULL,
CostomerId int NULL,
EmployeeId int NULL,
TotalPrice decimal(18,2) NULL,
Comment nvarchar(MAX) NULL


)

CREATE TABLE [OrderDetails] (

Id bigint NOT NULL,
OrderId bigint null,
ProductId int null,
Quantity int null,
Price decimal(18,2)


)


SELECT * FROM [OrderDetails];

CREATE DATABASE SEDCACADEMYDB;

use SEDCACADEMYDB;
CREATE TABLE Student (

ID int NOT NULL,
FirstName nvarchar(100) NOT NUll,
LastName nvarchar(100) NOT NUll,
DateOfBirth date NUll,
Gender  nchar(1) NULL,
NationalIdNumber nvarchar(20) NOT NULL,
StudentCardNumber nvarchar(20) NOT NULL

)

CREATE TABLE Teacher (

ID int NOT NULL,
FirstName nvarchar(100) NOT NUll,
LastName nvarchar(100) NOT NUll,
DateOfBirth date NUll,
AcademicRank  nvarchar(100) NOT NUll,
HireDate date not null

)

CREATE TABLE Grade (

ID int NOT NULL,
StudentID nvarchar(20) NOT NULL,
CourseID nvarchar(20) NOT NULL,
TeacherID nvarchar(20) NOT NULL,
Grade nvarchar(20) NOT NULL,
Comment nvarchar(MAX)  NULL,
CreatedDate date NOT NULL

)

CREATE TABLE Course(
ID int NOT NULL,
Name nvarchar(20) NOT NULL,
Credit nvarchar(10) not null,
AcademicYear nvarchar (10) not null,
Semester int not null
)

CREATE TABLE GradeDetails(
ID int NOT NULL,
GradeID nvarchar(20) NOT NULL,
AchievementTypeID nvarchar(20) NOT NULL,
AchievementPoints nvarchar(20) NOT NULL,
AchievementMaxPoints nvarchar(20) NOT NULL,
AchievementDate date NOT NULL

)

CREATE TABLE AchievementType (
ID int not null,
[Name] nvarchar(20) not null,
Description nvarchar(MAX) not null,
ParticipationRate nvarchar (10) not null
)