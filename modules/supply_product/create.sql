USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createSupplyProduct;
GO


CREATE PROCEDURE createSupplyProduct 
    @supply_id INT,
    @product_id INT,
    @quantity INT
    
AS

BEGIN

    DECLARE
        @supplier_id INT;


    IF NOT EXISTS (
        SELECT 1
        FROM product
        WHERE [id] = @product_id AND
            [deleted_at] IS NULL
    )


    BEGIN
    
        PRINT 'error - could not add product ' + 
            CAST(@product_id AS VARCHAR) +
            ' because the product does not exists';

        RETURN;

    END

    SELECT @supplier_id = supplier.id 
    FROM supplier
    INNER JOIN supply
    ON supplier.id = supply.supplier_id
    WHERE supply.id = @supply_id;
    
    
    IF NOT EXISTS (
        SELECT 1
        FROM product
        INNER JOIN product_group
        ON product.product_group_id = product_group.id
        WHERE product.id = @product_id AND
            [supplier_id] = @supplier_id
    )

    BEGIN

        PRINT 'error - supplier_id of product ' +
            CAST(@product_id AS VARCHAR) +
            ' is not the same as input supplier_id';

        RETURN;

    END 

    INSERT INTO supply_product ([supply_id], [product_id], [quantity]) 
    
        VALUES (@supply_id, @product_id, @quantity);


    UPDATE product
    SET [quantity] = [quantity] + @quantity
    WHERE [id] = @product_id;

END        

GO


DECLARE
    @supply_id INT,
    @product_id INT,
    @quantity INT;


SET @supply_id = 2;
SET @product_id = 8;
SET @quantity = 10;

      
EXEC createSupplyProduct
            @supply_id = @supply_id,
            @product_id = @product_id,
            @quantity = @quantity;


GO