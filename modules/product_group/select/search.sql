USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.productGroupSearch;
GO


CREATE PROCEDURE productGroupSearch
    @name NVARCHAR(50)
AS

BEGIN

    SELECT *
    FROM product_group
    WHERE [name] LIKE @name + '%';

END

GO


DECLARE
    @name NVARCHAR(50);


SET @name = 'sport';


EXEC productGroupSearch
    @name = @name;


GO