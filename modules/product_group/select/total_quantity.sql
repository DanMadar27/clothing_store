USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupTotalQuantity;
GO


CREATE PROCEDURE productGroupTotalQuantity
    @product_group_id INT
AS

BEGIN

    SELECT SUM(quantity) total_quantity 
    FROM product_group
    INNER JOIN product
    ON product_group.id = [product_group_id]
    WHERE product_group.id = @product_group_id AND
        product.deleted_at IS NULL;


END

GO


DECLARE
    @product_group_id INT;


SET @product_group_id = 5;


EXEC productGroupTotalQuantity
    @product_group_id = @product_group_id;


GO