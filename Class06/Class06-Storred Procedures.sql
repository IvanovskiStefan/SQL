SELECT *  FROM Student s
WHERE s.Gender = 'F'

CREATE OR ALTER PROCEDURE [Students With Gender]
AS
	SELECT *  FROM Student s
	WHERE s.Gender = 'F'

EXECUTE dbo.[Students With Gender]