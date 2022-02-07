USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteSoftProductGroup;
GO


CREATE PROCEDURE deleteSoftProductGroup

    @id INT

AS

BEGIN

    UPDATE product
    SET product.deleted_at = GETDATE()
    FROM product
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [product_group_id] = @id AND
    product.deleted_at IS NULL;


    UPDATE product_group
    SET [deleted_at] = GETDATE()
    WHERE [id] = @id AND
    [deleted_at] IS NULL;

END

GO


DECLARE
    @id INT;


SET @id = 2;


EXEC deleteSoftProductGroup
    @id = @id;


GO