USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createSalary;
GO


CREATE PROCEDURE createSalary

    @employee_id INT
    
AS

BEGIN

    DECLARE
        @brutto DECIMAL (7, 2),
        @netto DECIMAL (7, 2);


        SELECT @brutto = [wage] 
        FROM employee 
        WHERE [id] = @employee_id;
        
        SET @netto = (@brutto / 100) * 90;
        
        
        INSERT INTO salary ([employee_id], [brutto], [netto]) 

        VALUES (
            @employee_id,
            @brutto,
            @netto);
            
END

GO


DECLARE
    @employee_id INT;


SET @employee_id = 2;


EXEC createSalary
    @employee_id = @employee_id;


GO