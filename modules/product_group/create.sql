USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createProductGroup;
GO


CREATE PROCEDURE createProductGroup

    @supplier_id INT,
    @name NVARCHAR(50),
    @category NVARCHAR(50),
    @type NVARCHAR(50),
    @price DECIMAL (7, 2)
AS

BEGIN

        INSERT INTO product_group ([supplier_id], [name], [category],
                [type], [price]) 

        VALUES (
            @supplier_id,
            @name,
            @category,
            @type,
            @price);
END

GO


DECLARE
    @supplier_id INT,
    @name NVARCHAR(50),
    @category NVARCHAR(50),
    @type NVARCHAR(50),
    @price DECIMAL (7, 2);


SET @supplier_id = 2;
SET @name = 'sport shoes 20';
SET @category = 'shoes';
SET @type = 'men';
SET @price = 48;


EXEC createProductGroup
    @supplier_id = @supplier_id,
    @name = @name,
    @category = @category,
    @type = @type,
    @price = @price;


GO