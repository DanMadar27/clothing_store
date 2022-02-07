USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createPurchaseProduct;
GO

DROP PROCEDURE IF EXISTS dbo.createPurchase;
GO

DROP TYPE IF EXISTS dbo.purchase_int_table;  
GO


CREATE TYPE purchase_int_table AS TABLE (
    [id] INT PRIMARY KEY IDENTITY(1, 1),
    [value] INT NOT NULL);

GO


CREATE PROCEDURE createPurchaseProduct  
   @purchase_id INT,
    @product_id INT,
    @status INT = NULL OUTPUT
    
AS

BEGIN

    IF NOT EXISTS (
        SELECT 1
        FROM product
        WHERE [id] = @product_id AND
            [quantity] > 0 AND
            [deleted_at] IS NULL
    )

    BEGIN
    
        PRINT 'error - could not add product ' + 
            CAST(@product_id AS VARCHAR) +
            ' to purchase due to no quantity of the product ' +
            'or the product does not exists';

        SET @status = 1;

        RETURN;

    END


    UPDATE product
    SET [quantity] = [quantity] - 1
    WHERE [id] = @product_id;


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

            VALUES (@purchase_id, @product_id, 
                (SELECT price
                FROM product
                INNER JOIN product_group
                ON product_group.id = [product_group_id]
                WHERE product.id = @product_id));

END        

GO


CREATE PROCEDURE createPurchase
   @customer_id INT,
    @product_id_t dbo.purchase_int_table READONLY,
    @status INT = NULL OUTPUT
    
AS

BEGIN

    IF NOT EXISTS (SELECT 1 FROM @product_id_t)

    BEGIN

        PRINT 'error - no values in products table';

        SET @status = 1;

        RETURN;

    END


    DECLARE
        @purchase_id INT,
        @product_id INT,
        @iterator INT;


    SET @purchase_id = NULL;

    INSERT INTO purchase ([customer_id]) VALUES (@customer_id);

    SET @purchase_id = SCOPE_IDENTITY();


    SET @iterator = 1;
    SET @product_id = 0;

    WHILE (1 = 1) 

    BEGIN  

        SELECT @product_id = [value]
        FROM @product_id_t
        WHERE [id] = @iterator;


        -- Exit loop if no more products
        IF @@ROWCOUNT = 0 BREAK;


        EXEC createPurchaseProduct
            @purchase_id = @purchase_id,
            @product_id = @product_id,
            @status = @status OUTPUT;


        IF (@status = 1)

        BEGIN

            RETURN;

        END

        SET @iterator += 1;

    END



END

GO


DECLARE
    @customer_id INT,
    @purchase_id INT,
    @status INT,
    @product_id_str VARCHAR(200),
    @product_id_t AS purchase_int_table;


SET @customer_id = 3;

SET @product_id_str = '7,9,15,23';

INSERT INTO @product_id_t 
SELECT CAST([value] AS INT) 
FROM STRING_SPLIT(@product_id_str, ',');


BEGIN TRAN

SET @status = 0;

EXEC createPurchase
    @customer_id = @customer_id,
    @product_id_t = @product_id_t,
    @status = @status OUTPUT;


IF (@status = 0)

BEGIN

    PRINT 'COMMIT '

    COMMIT  TRAN

END

ELSE

BEGIN

    PRINT 'ROLLBACK'

    ROLLBACK TRAN

END


GO