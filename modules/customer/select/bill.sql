USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.customerBill;
GO


CREATE PROCEDURE customerBill
    @purchase_id INT
AS

BEGIN

    SELECT *
    FROM customer
    INNER JOIN purchase
    ON customer.id = purchase.customer_id 
    WHERE purchase.id = @purchase_id;


    SELECT *
    FROM purchase_product
    INNER JOIN product
    ON purchase_product.product_id = product.id
    INNER JOIN product_group
    ON product_group.id = [product_group_id]
    WHERE [purchase_id] = @purchase_id AND
    [product_id] = product.id AND
    product.deleted_at IS NULL;

END

GO


DECLARE
    @purchase_id INT;


SET @purchase_id = 5;


EXEC customerBill
    @purchase_id = @purchase_id;


GO