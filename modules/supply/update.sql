USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.updateSupply;
GO


CREATE PROCEDURE updateSupply

    @id INT,
    @price DECIMAL (7, 2) = NULL

AS

BEGIN
    
    IF (@price IS NULL)

    BEGIN

        PRINT 'all input values are null';

        RETURN;

    END


    UPDATE supply
    SET 

        [price] = ISNULL(@price, [price])

    WHERE id = @id;

END

GO


DECLARE
    @id INT,
    @supplier_id INT,
    @price DECIMAL (7, 2);


SET @id = 7;
SET @price = 300;


EXEC updateSupply
    @id = @id,
    @price = @price


GO