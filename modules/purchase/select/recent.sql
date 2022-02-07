USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.purchaseRecent;
GO


CREATE PROCEDURE purchaseRecent
    @total INT
AS

BEGIN

    SELECT TOP (@total) *
    FROM purchase
    ORDER BY [created_at] DESC;
    
END

GO


DECLARE
    @total INT

SET @total = 10;


EXEC purchaseRecent
    @total = @total;


GO