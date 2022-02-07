USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productAllQuantity;
GO


CREATE PROCEDURE productAllQuantity
AS

BEGIN

    SELECT [id], [quantity]
    FROM product
    WHERE [deleted_at] IS NULL
    ORDER BY [quantity] ASC;

END

GO


EXEC productAllQuantity;

GO