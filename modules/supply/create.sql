USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.createSupplyProduct;
GO

DROP PROCEDURE IF EXISTS dbo.createSupply;
GO

DROP TYPE IF EXISTS dbo.supply_int_table;  
GO


CREATE TYPE supply_int_table AS TABLE (
    [id] INT PRIMARY KEY IDENTITY(1, 1),
    [value] INT NOT NULL);

GO


CREATE PROCEDURE createSupplyProduct 
    @supplier_id INT,
    @supply_id INT,
    @product_id INT,
    @quantity INT,
    @status INT = NULL OUTPUT
    
AS

BEGIN

    IF NOT EXISTS (
        SELECT 1
        FROM product
        WHERE [id] = @product_id AND
            [deleted_at] IS NULL
    )


    BEGIN
    
        PRINT 'error - could not add product ' + 
            CAST(@product_id AS VARCHAR) +
            ' because the product does not exists';

        SET @status = 1;

        RETURN;

    END

    IF NOT EXISTS (
        SELECT 1
        FROM product
        INNER JOIN product_group
        ON product.product_group_id = product_group.id
        WHERE product.id = @product_id AND
            [supplier_id] = @supplier_id
    )

    BEGIN

        PRINT 'error - supplier_id of product ' +
            CAST(@product_id AS VARCHAR) +
            ' is not the same as input supplier_id';

        SET @status = 1;

        RETURN;

    END 

    INSERT INTO supply_product ([supply_id], [product_id], [quantity]) 
    
        VALUES (@supply_id, @product_id, @quantity);


    UPDATE product
    SET [quantity] = [quantity] + @quantity
    WHERE [id] = @product_id;

END        

GO


CREATE PROCEDURE createSupply
    @supplier_id INT,
    @price DECIMAL (7, 2),
    @product_id_t dbo.supply_int_table READONLY,
    @product_quantity_t dbo.supply_int_table READONLY,
    @status INT = NULL OUTPUT
    
AS

BEGIN

    IF NOT EXISTS (SELECT 1 FROM @product_id_t) OR
        NOT EXISTS (SELECT 1 FROM @product_quantity_t)

    BEGIN

        PRINT 'error - no values in product tables';

        SET @status = 1;

        RETURN;

    END

    
    DECLARE
        @supply_id INT,
        @product_id INT,
        @quantity INT,
        @iterator INT;


    SET @supply_id = NULL;

    INSERT INTO supply ([supplier_id], [price]) 
        
        VALUES (@supplier_id, @price);

    SET @supply_id = SCOPE_IDENTITY();


    SET @iterator = 1;
    SET @product_id = 0;

    WHILE (1 = 1) 

    BEGIN  

        SELECT @product_id = [value]
        FROM @product_id_t
        WHERE [id] = @iterator;

        IF NOT EXISTS (
            SELECT 1
            FROM product
            INNER JOIN product_group
            ON product.product_group_id = product_group.id
            WHERE product.id = @product_id AND
                [supplier_id] = @supplier_id
        )

        BEGIN
    
            PRINT 'error - supplier_id of product ' +
                CAST(@product_id AS VARCHAR) +
                ' is not the same as input supplier_id';

            SET @status = 1;

            RETURN;

        END 

        SELECT @quantity = [value]
        FROM @product_quantity_t
        WHERE [id] = @iterator;


        -- Exit loop if no more products
        IF @@ROWCOUNT = 0 BREAK;


        EXEC createSupplyProduct
            @supplier_id = @supplier_id,
            @supply_id = @supply_id,
            @product_id = @product_id,
            @quantity = @quantity,
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
    @supplier_id INT,
    @price DECIMAL (7, 2),
    @supply_id INT,
    @status INT,
    @product_id_str VARCHAR(200),
    @product_quantity_str VARCHAR(200),
    @product_id_t AS supply_int_table,
    @product_quantity_t AS supply_int_table;


SET @supplier_id = 1;
SET @price = 200;

SET @product_id_str = '7,9,15,23';
SET @product_quantity_str = '15,12,10,20';

INSERT INTO @product_id_t 
SELECT CAST([value] AS INT) 
FROM STRING_SPLIT(@product_id_str, ',');

INSERT INTO @product_quantity_t 
SELECT CAST([value] AS INT) 
FROM STRING_SPLIT(@product_quantity_str, ',');


BEGIN TRAN

SET @status = 0;

EXEC createSupply
    @supplier_id = @supplier_id,
    @price = @price,
    @product_id_t = @product_id_t,
    @product_quantity_t = @product_quantity_t,
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