USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createPurchaseProduct;
GO


CREATE PROCEDURE createPurchaseProduct 
    @purchase_id INT,
    @product_id INT
    
AS

BEGIN

    IF NOT EXISTS (
        SELECT 1
        FROM product
        WHERE [id] = @product_id AND
            [quantity] > 0 AND
            [deleted_at] IS NULL
    )

    BEGIN
    
        PRINT 'error - could not add product ' + 
            CAST(@product_id AS VARCHAR) +
            ' to purchase due to no quantity of the product ' +
            'or the product does not exists';

        RETURN;

    END


    UPDATE product
    SET [quantity] = [quantity] - 1
    WHERE [id] = @product_id;


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (@purchase_id, @product_id, 
            (SELECT price
            FROM product
            INNER JOIN product_group
            ON product_group.id = [product_group_id]
            WHERE product.id = @product_id));

END        

GO


DECLARE
    @purchase_id INT,
    @product_id INT;
    

SET @purchase_id = 7;
SET @product_id = 8;


EXEC createPurchaseProduct
            @purchase_id = @purchase_id,
            @product_id = @product_id;
           
          
GO