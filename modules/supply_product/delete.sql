USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteSupplyProduct;
GO


CREATE PROCEDURE deleteSupplyProduct

    @id INT

AS

BEGIN

    DECLARE
        @supply_quantity INT,
        @product_id INT,
        @product_quantity INT;


    SELECT @supply_quantity = [quantity], @product_id = [product_id]
    FROM supply_product
    WHERE [id] = @id; 

    SELECT @product_quantity = [quantity]
    FROM product
    WHERE [id] = @product_id; 


    IF (@supply_quantity > @product_quantity)
        
    BEGIN 
    
        PRINT 'error - cannot delete supply_product with product '  +
            CAST (@product_id AS VARCHAR) +
            ' because quantity of supply_product is bigger than quantity of product';
            
        RETURN 
    
    END 


    UPDATE product 
    SET [quantity] = [quantity] - @supply_quantity
    WHERE [id] = @product_id
    AND [deleted_at] IS NULL;
 
 
    DELETE supply_product
    FROM supply_product
    WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 5;


EXEC deleteSupplyProduct
    @id = @id;


GO