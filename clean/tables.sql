USE clothing_store
GO


IF OBJECT_ID('dbo.purchase_product', 'U') IS NOT NULL

    DROP TABLE purchase_product;

GO


IF OBJECT_ID('dbo.purchase', 'U') IS NOT NULL

    DROP TABLE purchase;

GO


IF OBJECT_ID('dbo.supply_product', 'U') IS NOT NULL

    DROP TABLE supply_product;

GO


IF OBJECT_ID('dbo.supply', 'U') IS NOT NULL

    DROP TABLE supply;

GO


IF OBJECT_ID('dbo.product', 'U') IS NOT NULL

    DROP TABLE product;

GO


IF OBJECT_ID('dbo.product_group', 'U') IS NOT NULL

    DROP TABLE product_group;

GO


IF OBJECT_ID('dbo.supplier', 'U') IS NOT NULL

    DROP TABLE supplier;

GO


IF OBJECT_ID('dbo.customer', 'U') IS NOT NULL

    DROP TABLE customer;

GO


IF OBJECT_ID('dbo.salary', 'U') IS NOT NULL

    DROP TABLE salary;

GO


IF OBJECT_ID('dbo.employee', 'U') IS NOT NULL

    DROP TABLE employee;

GO


IF OBJECT_ID('dbo.person', 'U') IS NOT NULL

    DROP TABLE person;

GO