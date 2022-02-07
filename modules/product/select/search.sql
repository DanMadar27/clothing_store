USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productSearch;
GO


CREATE PROCEDURE productSearch
    @name NVARCHAR(50)
AS

BEGIN

    SELECT product.*,
    [supplier_id], [name], [category], [type], [price]
    FROM product
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [name] LIKE @name + '%';

END

GO


DECLARE
    @name NVARCHAR(50);


SET @name = 'sport';


EXEC productSearch
    @name = @name;


GO