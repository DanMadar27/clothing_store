USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.customerAllPurchases;
GO


CREATE PROCEDURE customerAllPurchases
AS

BEGIN

    SELECT [customer_id],
    SUM(price) AS total_price,
    COUNT(DISTINCT purchase.id) AS total_purchases,
    COUNT(purchase_product.id) AS total_products
    FROM purchase
    INNER JOIN purchase_product
    ON purchase.id = [purchase_id]
    GROUP BY [customer_id]
    ORDER BY total_price DESC;

END

GO


EXEC customerAllPurchases

GO