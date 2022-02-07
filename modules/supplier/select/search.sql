USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.supplierSearch;
GO


CREATE PROCEDURE supplierSearch
    @name NVARCHAR(50)
AS

BEGIN

    SELECT *
    FROM supplier
    WHERE [name] LIKE @name + '%';

END

GO


DECLARE
    @name NVARCHAR(50);


SET @name = 'g';


EXEC supplierSearch
    @name = @name;


GO