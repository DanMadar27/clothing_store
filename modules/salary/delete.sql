USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteSalary;
GO


CREATE PROCEDURE deleteSalary 

    @id INT

AS

BEGIN

     DELETE
     FROM salary
     WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 2;


EXEC deleteSalary
    @id = @id;


GO