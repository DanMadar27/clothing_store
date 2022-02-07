USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupAverageQuantity;
GO


CREATE PROCEDURE productGroupAverageQuantity
AS

BEGIN

    SELECT AVG(total_quantity) AS quantity_average
    FROM (
        SELECT SUM(quantity) AS total_quantity
        FROM product
        WHERE product.deleted_at IS NULL
        GROUP BY [product_group_id]
    ) AS product_group_all_total_quantity;

END

GO


EXEC productGroupAverageQuantity;

GO