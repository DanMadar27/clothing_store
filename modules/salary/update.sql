USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.updateSalary ;
GO


CREATE PROCEDURE updateSalary 

    @id INT,
    @employee_id INT = NULL,
    @brutto DECIMAL (7, 2) = NULL,
    @netto DECIMAL (7, 2) = NULL

AS

BEGIN

   IF (@employee_id IS NULL AND
        @brutto IS NULL AND
        @netto IS NULL)

    BEGIN

        PRINT 'all input values are null';

        RETURN;

    END


    UPDATE salary 
    SET 

        [employee_id] = ISNULL(@employee_id, [employee_id]),

        [brutto] = ISNULL(@brutto, [brutto]),

        [netto] = ISNULL(@netto, [netto])

    WHERE id = @id;

END

GO


DECLARE
    @id INT,
    @employee_id INT,
    @brutto DECIMAL (7, 2),
    @netto DECIMAL (7, 2);


SET @id = 3;
SET @employee_id = 2;
SET @brutto = 5600;
SET @netto = 5000;


EXEC updateSalary 
    @id = @id,
    @employee_id = @employee_id,
    @brutto = @brutto,
    @netto = @netto;


GO