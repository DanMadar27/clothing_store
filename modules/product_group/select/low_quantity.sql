USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupLowQuantity;
GO


CREATE PROCEDURE productGroupLowQuantity
    @low_quantity INT
AS

BEGIN

    SELECT [product_group_id], SUM(quantity) AS total_quantity
    FROM product
    WHERE product.deleted_at IS NULL
    GROUP BY [product_group_id]
    HAVING SUM(quantity) <= @low_quantity
    ORDER BY total_quantity ASC;

END

GO


DECLARE
    @low_quantity INT;


SET @low_quantity = 30;


EXEC productGroupLowQuantity
    @low_quantity = @low_quantity;


GO