USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteSupplier;
GO


CREATE PROCEDURE deleteSupplier

    @id INT

AS

BEGIN

    UPDATE product
    SET product.deleted_at = GETDATE()
    FROM product
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [supplier_id] = @id;


    UPDATE product_group
    SET [supplier_id] = NULL,
    [deleted_at] = GETDATE()
    WHERE [supplier_id] = @id;
    

    DELETE
    FROM supplier
    WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 3;


EXEC deleteSupplier
    @id = @id;


GO