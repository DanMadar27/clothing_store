USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.supplierInfo;
GO


CREATE PROCEDURE supplierInfo
AS

BEGIN

    SELECT [supplier_id],
        SUM(price) AS total_price,
        COUNT(DISTINCT supply.id) AS total_supplys,
        SUM(quantity) AS total_products
    FROM supply
    INNER JOIN supply_product
    ON supply.id = [supply_id]
    GROUP BY [supplier_id]
    ORDER BY total_price DESC;

END

GO


EXEC supplierInfo

GO