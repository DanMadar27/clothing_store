USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupAllTotalQuantity;
GO


CREATE PROCEDURE productGroupAllTotalQuantity
AS

BEGIN

    SELECT [product_group_id], SUM(quantity) AS total_quantity
    FROM product
    WHERE product.deleted_at IS NULL
    GROUP BY [product_group_id]
    ORDER BY total_quantity ASC;


END

GO


EXEC productGroupAllTotalQuantity;

GO