USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteHardProduct;
GO


CREATE PROCEDURE deleteHardProduct

    @id INT

AS

BEGIN

    UPDATE purchase_product
    SET [product_id] = NULL
    WHERE [product_id] = @id;

    UPDATE supply_product
    SET [product_id] = NULL
    WHERE [product_id] = @id;


    DELETE
    FROM product
    WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 7;


EXEC deleteHardProduct
    @id = @id;


GO
