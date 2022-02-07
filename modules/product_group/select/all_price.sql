USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupAllPrice;
GO


CREATE PROCEDURE productGroupAllPrice
AS

BEGIN

    SELECT [id], [name], [price]
    FROM product_group
    ORDER BY [price] ASC;

END

GO


EXEC productGroupAllPrice;

GO