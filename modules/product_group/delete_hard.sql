USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteHardProductGroup;
GO


CREATE PROCEDURE deleteHardProductGroup

    @id INT

AS

BEGIN

    UPDATE purchase_product
    SET [product_id] = NULL
    FROM purchase_product
    INNER JOIN product
    ON product.id = [product_id]
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [product_group_id] = @id;


    UPDATE supply_product
    SET [product_id] = NULL
    FROM supply_product
    INNER JOIN product
    ON product.id = [product_id]
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [product_group_id] = @id;


    DELETE product
    FROM product
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [product_group_id] = @id;


    DELETE
    FROM product_group
    WHERE [id] = @id;

END

GO


DECLARE
    @id INT;


SET @id = 1;


EXEC deleteHardProductGroup
    @id = @id;


GO