USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deletePurchaseProduct;
GO


CREATE PROCEDURE deletePurchaseProduct

    @id INT

AS

BEGIN

    DECLARE
        @product_id INT;


    SELECT @product_id = [product_id]
    FROM purchase_product
    WHERE [id] = @id


    UPDATE product 
    SET [quantity] = [quantity] + 1
    WHERE [id] = @product_id AND 
        [deleted_at] IS NULL;
    

    DELETE 
    FROM purchase_product
    WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 5;


EXEC deletePurchaseProduct
    @id = @id;


GO