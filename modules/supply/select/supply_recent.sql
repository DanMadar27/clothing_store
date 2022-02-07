USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.supplyRecent;
GO


CREATE PROCEDURE supplyRecent
    @total INT
AS

BEGIN

    SELECT TOP (@total) *
    FROM supply
    ORDER BY [created_at] DESC;
    
END

GO


DECLARE
    @total INT

SET @total = 10;


EXEC supplyRecent
    @total = @total;


GO