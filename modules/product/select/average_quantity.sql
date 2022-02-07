USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productAverageQuantity;
GO


CREATE PROCEDURE productAverageQuantity
AS

BEGIN

    SELECT AVG(quantity) AS quantity_average
    FROM product
    WHERE [deleted_at] IS NULL;

END

GO


EXEC productAverageQuantity;

GO