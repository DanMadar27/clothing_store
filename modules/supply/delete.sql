USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteSupply;
GO


CREATE PROCEDURE deleteSupply

    @id INT

AS

BEGIN

    IF EXISTS (
        
        SELECT 1
        FROM product 
        INNER JOIN (
            
            SELECT product_id, SUM(quantity) AS q
            FROM supply_product
            WHERE [supply_id] = @id
            GROUP BY [product_id]

        ) AS supply_product

        ON product.id = [product_id]
        WHERE supply_product.q > product.quantity AND 
            [deleted_at] IS NULL
    )
        
    BEGIN 
    
        PRINT 'error - cannot delete supply '  +
            CAST (@id AS VARCHAR) +
            ' because quantity of one of the supply_product is bigger than quantity of product';
            
        RETURN 
    
    END 
    

    UPDATE product 
    SET [quantity] = [quantity] - supply_product.q
    FROM product 
    INNER JOIN (
            
            SELECT product_id, SUM(quantity) AS q
            FROM supply_product
            WHERE [supply_id] = @id
            GROUP BY [product_id]

        ) AS supply_product

    ON product.id = [product_id]
    WHERE [deleted_at] IS NULL


    DELETE supply_product
    FROM supply_product
    WHERE [supply_id] = @id;


    DELETE
    FROM supply
    WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 2;


EXEC deleteSupply
    @id = @id;


GO