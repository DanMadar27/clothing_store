USE clothing_store
GO


-- Create a new table called 'person' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.person', 'U') IS NULL

BEGIN

    CREATE TABLE dbo.person
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [first_name] NVARCHAR(50) NOT NULL,
        [last_name] NVARCHAR(50) NOT NULL,
        [date_of_birth] DATE NOT NULL,
        [country] NVARCHAR(50) NOT NULL,
        [city] NVARCHAR(50) NOT NULL,
        [address] NVARCHAR(50) NOT NULL,
        [zip_code] VARCHAR(50) NOT NULL,
        [phone_number] VARCHAR(20) NOT NULL,
        [email] NVARCHAR(70) NOT NULL,
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE()
    );

    
END

GO

DROP TRIGGER IF EXISTS dbo.personUpdatedAt;
GO

CREATE TRIGGER personUpdatedAt
ON person
AFTER UPDATE 
AS
    UPDATE person
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE person.id = i.id

GO


-- Create a new table called 'customer' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.customer', 'U') IS NULL

BEGIN
 
    CREATE TABLE dbo.customer
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [person_id] INT FOREIGN KEY REFERENCES person([id]),
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE()
    );

END

GO

DROP TRIGGER IF EXISTS dbo.customerUpdatedAt;
GO

CREATE TRIGGER customerUpdatedAt
ON customer
AFTER UPDATE 
AS
    UPDATE customer
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE customer.id = i.id

GO


-- Create a new table called 'employee' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.employee', 'U') IS NULL

BEGIN

    CREATE TABLE dbo.employee
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [person_id] INT FOREIGN KEY REFERENCES person([id]), 
        [wage] DECIMAL (7, 2) NOT NULL, 

        [type] NVARCHAR(50) NOT NULL
            CHECK ([type] IN('manager', 'sales associate', 'cashier')),

        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE()
    );

END

GO

DROP TRIGGER IF EXISTS dbo.employeeUpdatedAt;
GO

CREATE TRIGGER employeeUpdatedAt
ON employee
AFTER UPDATE 
AS
    UPDATE employee
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE employee.id = i.id

GO


-- Create a new table called 'salary' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.salary', 'U') IS NULL

BEGIN 

    CREATE TABLE dbo.salary
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [employee_id] INT FOREIGN KEY REFERENCES employee([id]), 
        [brutto] DECIMAL (7, 2), 
        [netto] DECIMAL (7, 2), 
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE(),
        
        CHECK ([netto] <= [brutto])
    );

END

GO

DROP TRIGGER IF EXISTS dbo.salaryUpdatedAt;
GO

CREATE TRIGGER salaryUpdatedAt
ON salary
AFTER UPDATE 
AS
    UPDATE salary
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE salary.id = i.id

GO


-- Create a new table called 'supplier' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.supplier', 'U') IS NULL

BEGIN
 
    CREATE TABLE dbo.supplier
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [name] NVARCHAR(50) NOT NULL,
        [country] NVARCHAR(50) NOT NULL,
        [city] NVARCHAR(50) NOT NULL,
        [address] NVARCHAR(50) NOT NULL,
        [zip_code] VARCHAR(50) NOT NULL,
        [phone_number] VARCHAR(20) NOT NULL,
        [email] NVARCHAR(70) NOT NULL,
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE()
    );

END

GO

DROP TRIGGER IF EXISTS dbo.supplierUpdatedAt;
GO

CREATE TRIGGER supplierUpdatedAt
ON supplier
AFTER UPDATE 
AS
    UPDATE supplier
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE supplier.id = i.id

GO


-- Create a new table called 'product_group' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.product_group', 'U') IS NULL

BEGIN 

    CREATE TABLE dbo.product_group
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [supplier_id] INT FOREIGN KEY REFERENCES supplier([id]),
        [name] NVARCHAR(50) NOT NULL,
        
        [category] NVARCHAR(50) NOT NULL
            CHECK ([category] IN('shirt', 'pants', 'shoes', 'socks')),
        
        [type] NVARCHAR(50) NOT NULL
            CHECK ([type] IN('men', 'women', 'kids', 'babies')),
        
        [price] DECIMAL (7, 2) NOT NULL CHECK ([price] > 0),
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE(),   
        [deleted_at] DATETIME
    );

END

GO

DROP TRIGGER IF EXISTS dbo.productGroupUpdatedAt;
GO

CREATE TRIGGER productGroupUpdatedAt
ON product_group
AFTER UPDATE 
AS
    UPDATE product_group
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE product_group.id = i.id

GO


-- Create a new table called 'product' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.product', 'U') IS NULL

BEGIN

    CREATE TABLE dbo.product
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [product_group_id] INT FOREIGN KEY REFERENCES product_group([id]),
        [size] NVARCHAR(50) NOT NULL,
        [quantity] INT NOT NULL CHECK ([quantity] >= 0) DEFAULT 0,
        [color] NVARCHAR(50) NOT NULL,
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [deleted_at] DATETIME
    );

END

GO

DROP TRIGGER IF EXISTS dbo.productUpdatedAt;
GO

CREATE TRIGGER productUpdatedAt
ON product
AFTER UPDATE 
AS
    UPDATE product
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE product.id = i.id

GO


-- Create a new table called 'supply' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.supply', 'U') IS NULL

BEGIN

    CREATE TABLE dbo.supply
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [supplier_id] INT FOREIGN KEY REFERENCES supplier([id]),
        [price] DECIMAL (7, 2) NOT NULL CHECK ([price] > 0),
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE(),
    );

END

GO

DROP TRIGGER IF EXISTS dbo.supplyUpdatedAt;
GO

CREATE TRIGGER supplyUpdatedAt
ON supply
AFTER UPDATE 
AS
    UPDATE supply
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE supply.id = i.id

GO


-- Create a new table called 'supply_product' in schema 'dbo'
-- if it is not exists


IF OBJECT_ID('dbo.supply_product', 'U') IS NULL

BEGIN 

    CREATE TABLE dbo.supply_product
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [supply_id] INT FOREIGN KEY REFERENCES supply([id]),
        [product_id] INT FOREIGN KEY REFERENCES product([id]),
        [quantity] INT NOT NULL CHECK ([quantity] > 0),
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE()
    );

END

GO

DROP TRIGGER IF EXISTS dbo.supplyProductUpdatedAt;
GO

CREATE TRIGGER supplyProductUpdatedAt
ON supply_product
AFTER UPDATE 
AS
    UPDATE supply_product
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE supply_product.id = i.id

GO


-- Create a new table called 'purchase' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.purchase', 'U') IS NULL

BEGIN

    CREATE TABLE dbo.purchase
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [customer_id] INT FOREIGN KEY REFERENCES customer([id]),
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE(),
    );

END

GO

DROP TRIGGER IF EXISTS dbo.purchaseUpdatedAt;
GO

CREATE TRIGGER purchaseUpdatedAt
ON purchase
AFTER UPDATE 
AS
    UPDATE purchase
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE purchase.id = i.id

GO


-- Create a new table called 'purchase_product' in schema 'dbo' if it is not exists

IF OBJECT_ID('dbo.purchase_product', 'U') IS NULL

BEGIN

    CREATE TABLE dbo.purchase_product
    (
        [id] INT PRIMARY KEY IDENTITY (1, 1),
        [purchase_id] INT FOREIGN KEY REFERENCES purchase([id]),
        [product_id] INT FOREIGN KEY REFERENCES product([id]),
        [price] DECIMAL (7, 2) NOT NULL CHECK ([price] > 0),
        [created_at] DATETIME NOT NULL DEFAULT GETDATE(),
        [updated_at] DATETIME NOT NULL DEFAULT GETDATE()
    );

END

GO

DROP TRIGGER IF EXISTS dbo.purchaseProductUpdatedAt;
GO

CREATE TRIGGER purchaseProductUpdatedAt
ON purchase_product
AFTER UPDATE 
AS
    UPDATE purchase_product
    SET [updated_at] = GETDATE()
    FROM Inserted AS i
    WHERE purchase_product.id = i.id

GO