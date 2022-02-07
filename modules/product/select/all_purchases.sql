USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productAllPurchases;
GO


CREATE PROCEDURE productAllPurchases
AS

BEGIN

    SELECT [product_id],
    COUNT(purchase_product.id) AS total_purchases,
    SUM(price) AS total_price
    FROM purchase_product
    GROUP BY [product_id]
    ORDER BY total_purchases DESC;

END

GO


EXEC productAllPurchases

GO 