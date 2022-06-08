CREATE OR ALTER PROCEDURE dbo.sp_InsertEmployee
(
	@firstName nvarchar(100),
	@lastName nvarchar(100),
	@dateOfBirth date = NULL,
	@gender nchar(1) = NULL,
	@hireDate date = NULL,
	@nationalIDNumber nvarchar (20) = NULL,
	@EmployeeID int OUT
)
AS
BEGIN
	INSERT INTO	Employees(FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
	VALUES (@firstName,@lastName,@dateOfBirth,@gender,@hireDate,@nationalIDNumber)

	--scope_identity returns the last identity value inserted into an identity column in the 
	--same scope 
	
	SET @EmployeeID = SCOPE_IDENTITY()

	SELECT *  
	FROM Employees 
	where id = @EmployeeID

END
GO

DECLARE @ReturnValue int, @EmployeeIDOUT int ;

EXEC @ReturnValue = dbo.sp_InsertEmployee 
					@FirstName = 'Stefan',
					@LastName = 'Ivanovski',
					@DateOfBirth = '1989-10-05',
					@Gender = 'm',
					@HireDate = '2016-10-01',
					@NationalIDNumber = '0505989455040',
					@EmployeeID = @EmployeeIDOUT

SELECT @ReturnValue AS ReturnValue, @EmployeeIDOUT AS EmployeeOUT

select * from Employees
order by ID DESC