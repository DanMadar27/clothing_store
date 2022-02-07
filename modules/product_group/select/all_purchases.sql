USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupAllPurchases;
GO


CREATE PROCEDURE productGroupAllPurchases
AS

BEGIN
  
    SELECT [product_group_id],
    COUNT(purchase_product.id) AS total_purchases,
    SUM(purchase_product.price) AS total_price
    FROM product_group
    INNER JOIN product
    ON product_group.id = [product_group_id]
    INNER JOIN purchase_product
    ON product.id = [product_id]
    GROUP BY [product_group_id]
    ORDER BY total_purchases DESC;

END

GO


EXEC productGroupAllPurchases

GO 