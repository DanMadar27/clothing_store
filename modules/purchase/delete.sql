USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deletePurchase;
GO


CREATE PROCEDURE deletePurchase

    @id INT

AS

BEGIN

    UPDATE product 
    SET [quantity] = [quantity] + purchase_product.q
    FROM product 
    INNER JOIN (
            
            SELECT product_id, COUNT(product_id) AS q
            FROM purchase_product
            WHERE [purchase_id] = @id
            GROUP BY [product_id]

        ) AS purchase_product

    ON product.id = [product_id]
    WHERE [deleted_at] IS NULL
    

    DELETE 
    FROM purchase_product
    WHERE [purchase_id] = @id;


    DELETE
    FROM purchase
    WHERE [id] = @id;
    
END

GO


DECLARE
    @id INT;


SET @id = 2;


EXEC deletePurchase
    @id = @id;

GO