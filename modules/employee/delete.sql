USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteEmployee ;
GO


CREATE PROCEDURE deleteEmployee 

    @id INT

AS

BEGIN

    DECLARE
        @person_id INT;


    DELETE
    FROM salary
    WHERE [employee_id] = @id;


    SET @person_id = NULL; 

    SELECT @person_id = [person_id] 
    FROM employee
    WHERE [id] = @id;


    DELETE
    FROM employee
    WHERE [id] = @id;
    
    
    DELETE 
    FROM person
    WHERE [id] = @person_id;

END

GO


DECLARE
    @id INT;


SET @id = 1;


EXEC deleteEmployee 
    @id = @id;


GO