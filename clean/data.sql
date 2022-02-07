USE clothing_store
GO


IF OBJECT_ID('dbo.purchase_product', 'U') IS NOT NULL

BEGIN

    DELETE FROM purchase_product;
    
    -- set id primary key back to 1

    DBCC CHECKIDENT ('[purchase_product]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.purchase', 'U') IS NOT NULL

BEGIN

    DELETE FROM purchase;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[purchase]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.supply_product', 'U') IS NOT NULL

BEGIN

    DELETE FROM supply_product;
    
    -- set id primary key back to 1

    DBCC CHECKIDENT ('[supply_product]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.supply', 'U') IS NOT NULL

BEGIN

    DELETE FROM supply;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[supply]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.product', 'U') IS NOT NULL

BEGIN

    DELETE FROM product;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[product]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.product_group', 'U') IS NOT NULL

BEGIN

    DELETE FROM product_group;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[product_group]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.supplier', 'U') IS NOT NULL

BEGIN

    DELETE FROM supplier;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[supplier]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.customer', 'U') IS NOT NULL

BEGIN

    DELETE FROM customer;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[customer]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.salary', 'U') IS NOT NULL

BEGIN

    DELETE FROM salary;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[salary]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.employee', 'U') IS NOT NULL

BEGIN

    DELETE FROM employee;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[employee]', RESEED, 0);

END

GO


IF OBJECT_ID('dbo.person', 'U') IS NOT NULL

BEGIN

    DELETE FROM person;

    -- set id primary key back to 1

    DBCC CHECKIDENT ('[person]', RESEED, 0);

END

GO