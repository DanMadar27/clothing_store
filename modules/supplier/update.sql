USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.updateSupplier;
GO


CREATE PROCEDURE updateSupplier

    @id INT,
    @name NVARCHAR(50) = NULL,
    @country NVARCHAR(50)= NULL,
    @city NVARCHAR(50)= NULL,
    @address NVARCHAR(50)= NULL,
    @zip_code VARCHAR(50)= NULL,
    @phone_number NVARCHAR(20) = NULL,
    @email NVARCHAR(70) = NULL

AS

BEGIN

    
    IF (@name IS NULL AND
        @country IS NULL AND
        @city IS NULL AND
        @address IS NULL AND
        @zip_code IS NULL AND
        @phone_number IS NULL AND
        @email IS NULL)

    BEGIN

        PRINT 'all input values are null';

        RETURN;

    END


    UPDATE supplier
    SET 

        [name] = ISNULL(@name, [name]),

        [country] = ISNULL(@country, [country]),
        
        [city] = ISNULL(@city, [city]),
        
        [address] = ISNULL(@address, [address]),
        
        [zip_code] = ISNULL(@zip_code, [zip_code]),

        [phone_number] = ISNULL(@phone_number, [phone_number]),

        [email] = ISNULL(@email, [email])

    WHERE id = @id;

END

GO


DECLARE
    @id INT,
    @name NVARCHAR(50),
    @country NVARCHAR(50),
    @city NVARCHAR(50),
    @address NVARCHAR(50),
    @zip_code VARCHAR(50),
    @phone_number NVARCHAR(20),
    @email NVARCHAR(70);


SET @id = 1;
SET @name = 'Kihn and Sons';
SET @country = 'Israel';
SET @city = 'Petah Tikva';
SET @address = '4 Mosinee Street';
SET @zip_code = '1263438';
SET @phone_number = '963-996-4474';
SET @email = 'fastill3@usatoday.com';


EXEC updateSupplier
    @id = @id,
    @name = @name,
    @country = @country,
    @city = @city,
    @address = @address,
    @zip_code = @zip_code,
    @phone_number = @phone_number,
    @email = @email;


GO