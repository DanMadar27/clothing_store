USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createProduct;
GO


CREATE PROCEDURE createProduct

    @product_group_id INT,
    @size NVARCHAR(50),
    @color NVARCHAR(50)

AS

BEGIN

        INSERT INTO product ([product_group_id], [size],
                [color]) 

        VALUES (
            @product_group_id,
            @size,
            @color);

END

GO


DECLARE
    @product_group_id INT,
    @size NVARCHAR(50),
    @color NVARCHAR(50);


SET @product_group_id = 2;
SET @size = 'l';
SET @color = 'black';


EXEC createProduct
    @product_group_id = @product_group_id,
    @size = @size,
    @color = @color;


GO