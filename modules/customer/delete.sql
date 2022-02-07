USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.deleteCustomer;
GO


CREATE PROCEDURE deleteCustomer

    @id INT

AS

BEGIN

    DECLARE
        @person_id INT;


    DELETE purchase_product
    FROM purchase_product
    INNER JOIN purchase
    ON purchase.id = purchase_id
    WHERE [customer_id] = @id;


    DELETE
    FROM purchase
    WHERE [customer_id] = @id;
    

    SET @person_id = NULL; 

    SELECT @person_id = [person_id] 
    FROM customer
    WHERE [id] = @id;


    DELETE
    FROM customer
    WHERE [id] = @id;
    
    
    DELETE 
    FROM person
    WHERE [id] = @person_id;


END

GO


DECLARE
    @id INT;


SET @id = 11;


EXEC deleteCustomer
    @id = @id;


GO