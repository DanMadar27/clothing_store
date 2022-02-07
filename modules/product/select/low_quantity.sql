USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productLowQuantity;
GO


CREATE PROCEDURE productLowQuantity
    @low_quantity INT
AS

BEGIN

    SELECT [id], [quantity]
    FROM product
    WHERE [quantity] <= @low_quantity AND
    [deleted_at] IS NULL
    ORDER BY [quantity] ASC;

END

GO


DECLARE
    @low_quantity INT;


SET @low_quantity = 10;


EXEC productLowQuantity
    @low_quantity = @low_quantity;


GO