USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.updateProduct;
GO


CREATE PROCEDURE updateProduct

    @id INT,
    @product_group_id INT = NULL,
    @size NVARCHAR(50) = NULL,
    @quantity INT = NULL,
    @color NVARCHAR(50) = NULL

AS

BEGIN

    
    IF (@product_group_id IS NULL AND
        @size IS NULL AND
        @quantity IS NULL AND
        @color IS NULL)

    BEGIN

        PRINT 'all input values are null';

        RETURN;

    END


    UPDATE product
    SET 

        [product_group_id] = ISNULL(@product_group_id, [product_group_id]),

        [size] = ISNULL(@size, [size]),

        [quantity] = ISNULL(@quantity, [quantity]),

        [color] = ISNULL(@color, [color])

    WHERE id = @id;

END

GO


DECLARE
    @id INT,
    @product_group_id INT,
    @size NVARCHAR(50),
    @quantity INT,
    @color NVARCHAR(50);


SET @id = 7;
SET @product_group_id = 5;
SET @size = 'New size';
SET @quantity = '15';
SET @color = 'red';


EXEC updateProduct
    @id = @id,
    @product_group_id = @product_group_id,
    @size = @size,
    @quantity = @quantity,
    @color = @color


GO