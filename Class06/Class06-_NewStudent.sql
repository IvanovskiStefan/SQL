CREATE OR ALTER PROCEDURE sp_AddCustomer 
(
	@Name nvarchar (100),
	@AccountNumber nvarchar(100) = NULL,
	@City nvarchar (100)  = NULL,
	@RegionName nvarchar (100)  = NULL,
	@CustomerSize nvarchar (10)  = NULL,
	@PhoneNumber nvarchar (20)  = NULL,
	@IsActive bit
)

AS 
BEGIN
	INSERT INTO dbo.Customers (Name,AccountNumber,City,RegionName,CustomerSize,PhoneNumber,IsActive)
	VALUES (@Name,@AccountNumber,@City,@RegionName,@CustomerSize,@PhoneNumber,@IsActive)


END

select * from Customers


