USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteSoftProduct;
GO


CREATE PROCEDURE deleteSoftProduct

    @id INT

AS

BEGIN

    UPDATE product
    SET product.deleted_at = GETDATE()
    FROM product
    WHERE [id] = @id AND
    product.deleted_at IS NULL;

END

GO


DECLARE
    @id INT;


SET @id = 7;


EXEC deleteSoftProduct
    @id = @id;


GO
