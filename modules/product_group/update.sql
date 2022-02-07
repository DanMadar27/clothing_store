USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.updateProductGroup;
GO


CREATE PROCEDURE updateProductGroup

    @id INT,
    @supplier_id INT = NULL,
    @name NVARCHAR(50) = NULL,
    @category NVARCHAR(50) = NULL,
    @type NVARCHAR(50) = NULL,
    @price DECIMAL (7, 2) = NULL

AS

BEGIN


    IF (@supplier_id IS NULL AND
        @name IS NULL AND
        @category IS NULL AND
        @type IS NULL AND
        @price IS NULL)

    BEGIN

        PRINT 'all input values are null';

        RETURN;

    END


    UPDATE product_group
    SET 

        [supplier_id] = ISNULL(@supplier_id, [supplier_id]),

        [name] = ISNULL(@name, [name]),

        [category] = ISNULL(@category, [category]),

        [type] = ISNULL(@type, [type]),

        [price] = ISNULL(@price, [price])

    WHERE id = @id;

END

GO


DECLARE
    @id INT,
    @supplier_id INT,
    @name NVARCHAR(50),
    @category NVARCHAR(50),
    @type NVARCHAR(50),
    @price DECIMAL (7, 2);


SET @id = 10;
SET @supplier_id = 1;
SET @name = 'New Product Name';
SET @category = 'pants';
SET @type = 'women';
SET @price = 55;


EXEC updateProductGroup
    @id = @id,
    @supplier_id = @supplier_id,
    @name = @name,
    @category = @category,
    @type = @type,
    @price = @price;


GO