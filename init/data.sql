USE clothing_store
GO


DROP PROCEDURE IF EXISTS dbo.initData;
GO


CREATE PROCEDURE initData
AS

BEGIN

    -- Check if all tables exist

    IF OBJECT_ID('dbo.person', 'U') IS NULL OR
        OBJECT_ID('dbo.customer', 'U') IS NULL OR
        OBJECT_ID('dbo.employee', 'U') IS NULL OR
        OBJECT_ID('dbo.salary', 'U') IS NULL OR
        OBJECT_ID('dbo.supplier', 'U') IS NULL OR
        OBJECT_ID('dbo.product_group', 'U') IS NULL OR
        OBJECT_ID('dbo.product', 'U') IS NULL OR
        OBJECT_ID('dbo.supply', 'U') IS NULL OR
        OBJECT_ID('dbo.supply_product', 'U') IS NULL OR
        OBJECT_ID('dbo.purchase', 'U') IS NULL OR
        OBJECT_ID('dbo.purchase_product', 'U') IS NULL

    BEGIN

        PRINT 'error - one of the tables not exist';

        RETURN;

    END



    -- insert data in person table

    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])
        
        VALUES ('Shandee', 'Moncreiffe', '1972-10-11',
            'Israel', 'Tel Aviv', '1922 Pierstorff Center',
            '6726522', '960-902-2790', 'smoncreiffe0@unicef.org');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Thomasina', 'Moar', '1971-08-27',
            'Israel', 'Tel Aviv', '1922 Pierstorff Center',
            '6726522', '179-737-8705', 'tmoar1@hubpages.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Ring', 'Leveritt', '1994-09-09', 
            'Israel', 'Jerusalem', '9497 Calypso Center', 
            '6286926', '577-400-4499', 'rleveritt2@google.co.jp');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Damiano', 'Ewing', '1978-11-14', 
            'Israel', 'Jerusalem', '0 Forest Run Center', 
            '4854448', '472-863-5043', 'dewing3@tumblr.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Jay', 'Olivera', '1980-04-26', 
            'China', 'Hong Kong', '35 Hermina Trail', 
            '9905244', '341-580-9346', 'jolivera4@chicagotribune.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Chiquita', 'Sneddon', '2004-12-14', 
            'United States', 'Chicago', '68 Green Drive', 
            '3120863', '616-550-8590', 'csneddon5@exblog.jp');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Noll', 'Bosche', '1976-02-05', 
            'Israel', 'Tel Aviv', '866 Anhalt Court', 
            '5648474', '672-546-6430', 'nbosche6@xing.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Celisse', 'Veltman', '1981-05-28', 
            'Israel', 'Rishon LeZion', '9 Cordelia Place', 
            '7052402', '785-784-9504', 'cveltman7@deviantart.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Nicoli', 'Sigge', '1990-06-14', 
            'China', 'Hong Kong', '5394 Pine View Road', 
            '1892479', '875-696-8820', 'nsigge8@yahoo.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Brock', 'Goakes', '1995-06-28', 
            'China', 'Hong Kong', '3 Marcy Street', 
            '3441116', '432-995-4533', 'bgoakes9@shop-pro.jp');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Adriaens', 'Brandts', '1991-06-14', 
            'China', 'Beijing', '76 Dakota Junction', 
            '6604064', '273-706-5141', 'abrandtsa@nifty.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Alix', 'Preedy', '1975-01-03', 
            'Israel', 'Rishon LeZion', '1 School Street', 
            '4123271', '522-515-1612', 'apreedyb@cam.ac.uk');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Annora', 'Oakeshott', '1971-05-26', 
            'China', 'Beijing', '7349 Carey Trail', 
            '4879739', '926-333-5788', 'aoakeshottc@alibaba.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Ulysses', 'Kimbrough', '1988-02-18', 
            'China', 'Beijing', '1059 Harper Trail', '9774409', 
            '168-775-5591', 'ukimbroughd@digg.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Janos', 'Stiggles', '1971-12-15', 
            'United States', 'New York', '984 Oneill Parkway', 
            '5390960', '511-776-6715', 'jstigglese@alexa.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Nanny', 'Philpot', '1997-10-09', 
            'Israel', 'Rishon LeZion', '06848 Becker Avenue', 
            '9801183', '658-137-8543', 'nphilpotf@so-net.ne.jp');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Danyette', 'Linscott', '1986-10-05', 
            'China', 'Beijing', '2197 Weeping Birch Street', 
            '3026331', '892-919-2257', 'dlinscottg@oaic.gov.au');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Laetitia', 'Thaine', '1995-07-05', 
            'Israel', 'Rishon LeZion', '9 Stephen Avenue', 
            '6045974', '222-243-7056', 'lthaineh@webnode.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Bartel', 'Ughelli', '2003-11-20', 
            'Israel', 'Petah Tikva', '6771 Logan Plaza', 
            '3685156', '680-214-0745', 'bughellii@vinaora.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email]) 
        
        VALUES ('Norry', 'Desouza', '1973-07-19', 
            'Israel', 'Petah Tikva', '5007 Duke Point', 
            '4534018', '569-560-4793', 'ndesouzaj@nih.gov');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Chrisse', 'Hruska', '1994-07-22',
            'Israel', 'Tel Aviv', '124 Nobel Place',
            '5072385', '904-588-1512', 'chruska0@uol.com.br');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Barnaby', 'Garmston', '1996-05-15', 
            'Israel', 'Tel Aviv', '06 1st Junction',
            '1149320', '505-113-9553', 'bgarmston1@odnoklassniki.ru');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Lorene', 'Giorio', '1995-04-08', 
            'Israel', 'Tel Aviv', '60041 Havey Trail', 
            '9702154', '483-555-2047', 'lgiorio2@newyorker.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Alvera', 'Stapele', '1994-10-12', 
            'Israel', 'Tel Aviv', '91076 Monica Avenue', 
            '1523278', '995-160-3275',    'astapele3@marriott.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Odette', 'Kach', '1994-11-22', 
            'Israel', 'Jerusalem', '1545 Farmco Circle', 
            '2864591', '583-287-4282', 'okach4@guardian.co.uk');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Suzann', 'Puleque', '1996-07-31', 
            'Israel', 'Jerusalem', '57 Ridgeway Avenue', 
            '9576946', '221-326-2921', 'spuleque5@wikispaces.com');


    INSERT INTO person ([first_name], [last_name], [date_of_birth],
        [country], [city], [address], [zip_code], [phone_number], [email])  

        VALUES ('Rosanna', 'O''Criane', '1994-03-17', 
            'Israel', 'Jerusalem', '55 Tomscot Court', 
            '9760216', '289-986-8453', 'rocriane6@yandex.ru');


    -- insert data in customer table

    INSERT INTO customer ([person_id]) 

        VALUES (1);


    INSERT INTO customer ([person_id]) 

        VALUES (2);


    INSERT INTO customer ([person_id]) 

        VALUES (3);


    INSERT INTO customer ([person_id]) 

        VALUES (4);


    INSERT INTO customer ([person_id]) 

        VALUES (5);


    INSERT INTO customer ([person_id]) 

        VALUES (6);


    INSERT INTO customer ([person_id]) 

        VALUES (7);


    INSERT INTO customer ([person_id]) 

        VALUES (8);


    INSERT INTO customer ([person_id]) 

        VALUES (9);


    INSERT INTO customer ([person_id]) 

        VALUES (10);


    INSERT INTO customer ([person_id]) 

        VALUES (11);


    INSERT INTO customer ([person_id]) 

        VALUES (12);


    INSERT INTO customer ([person_id]) 

        VALUES (13);


    INSERT INTO customer ([person_id]) 

        VALUES (14);


    INSERT INTO customer ([person_id]) 

        VALUES (15);


    INSERT INTO customer ([person_id]) 

        VALUES (16);


    INSERT INTO customer ([person_id]) 

        VALUES (17);


    INSERT INTO customer ([person_id]) 

        VALUES (18);


    INSERT INTO customer ([person_id]) 

        VALUES (19);


    INSERT INTO customer ([person_id]) 

        VALUES (20);


    -- insert data in employee table

    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (21, 12000, 'manager', '2000-5-20 11:40:30')


    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (22, 8000, 'sales associate', '2002-07-12 13:45:35')


    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (23, 4500, 'sales associate', '2002-03-11 16:21:20')


    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (24, 4000, 'sales associate', '2002-04-10 17:23:30')


    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (25, 2000, 'cashier', '2005-05-23 12:21:30')


    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (26, 1500, 'cashier', '2006-08-11 19:20:10')


    INSERT INTO employee ([person_id], [wage], [type], [created_at]) 

        VALUES (27, 1000, 'cashier', '2007-09-10 13:22:45')


    -- insert data in salary table

    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (1, 8000, 7000, '2008-07-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (1, 9000, 8000, '2008-08-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (1, 10000, 9000.57, '2008-09-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (2, 7000, 6000, '2008-07-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (2, 8000, 7000, '2008-08-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (3, 4400, 4000, '2008-07-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (3, 4400, 4000, '2008-08-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (4, 3800, 3500, '2008-07-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (4, 3800, 3500, '2008-08-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (5, 1800, 1500, '2008-08-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (6, 1300, 1000, '2008-08-20 13:30:20')


    INSERT INTO salary ([employee_id], [brutto], [netto], [created_at]) 

        VALUES (7, 900, 700, '2008-08-20 13:30:20')


    -- insert data in supplier table

    INSERT INTO supplier ([name], [country], [city], 
        [address], [zip_code], [phone_number], [email])

        VALUES ('Skiles-Ziemann', 'China', 'Hong Kong',
            '39868 Clarendon Junction', '4874018',
            '698-291-1241', 'spury0@mail.io');


    INSERT INTO supplier ([name], [country], [city], 
        [address], [zip_code], [phone_number], [email])

        VALUES ('Gusikowski, Kessler and Morissette', 'United States', 
            'New York',
            '744 Shop Center', '7825318',
            '341-686-6262', 'ksher1@mail.ru');


    INSERT INTO supplier ([name], [country], [city], 
        [address], [zip_code], [phone_number], [email])

        VALUES ('Bauch-McCullough', 'United States', 'Chicago',
            '997 Anniversary Lane', '9513023',
            '179-992-7796', 'egolightly2@mail.com');


    INSERT INTO supplier ([name], [country], [city], 
        [address], [zip_code], [phone_number], [email])

        VALUES ('Rodriguez-Legros', 'China', 'Hong Kong',
            '39868 Clarendon Junction', '4874018',
            '650-351-4446', 'epotkins3@mail.com');


    INSERT INTO supplier ([name], [country], [city], 
        [address], [zip_code], [phone_number], [email])

        VALUES ('Thompson, Bartell and Russel', 'China', 'Hong Kong',
            '15 Crossing Street', '6874899',
            '471-281-1145', 'porbon4@mail.org');


    -- insert data in product_group table

    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'sport shirt men1', 'shirt', 'men', 99);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'sport shirt men2', 'shirt', 'men', 92);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'long shirt men1', 'shirt', 'men', 190);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'long shirt men2', 'shirt', 'men', 41);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'sport pants men1', 'pants', 'men', 164);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'sport pants men2', 'pants', 'men', 186);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'long pants men', 'pants', 'men', 95.37);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'sport shoes men', 'shoes', 'men', 139);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'elegant shoes men', 'shoes', 'men', 127);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (1, 'socks men', 'socks', 'men', 64);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'long shirt women1', 'shirt', 'women', 44);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'long shirt women2', 'shirt', 'women', 68);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'short shirt women3', 'shirt', 'women', 68);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'long pants women1', 'pants', 'women', 40);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'long pants women2', 'pants', 'women', 188);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'short pants women', 'pants', 'women', 99);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'elegant shoes women1', 'shoes', 'women', 164);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'elegant shoes women2', 'shoes', 'women', 67);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (2, 'socks women 1', 'socks', 'women', 57);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (3, 'socks women 1', 'socks', 'women', 82);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (3, 'short shirt kids 1', 'shirt', 'kids', 35);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (3, 'short shirt kids 1', 'shirt', 'kids', 198);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (3, 'sport pants kids 1', 'pants', 'kids', 43);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (3, 'sport pants kids 2', 'pants', 'kids', 165);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (4, 'sport shoes kids 1', 'shoes', 'kids', 90);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (4, 'socks kids', 'socks', 'kids', 80);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (5, 'short shirt babies 1', 'shirt', 'babies', 40);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (5, 'short shirt babies 2', 'shirt', 'babies', 55);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (5, 'long pants babies', 'pants', 'babies', 30);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (5, 'short pants babies', 'pants', 'babies', 38);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (5, 'shoes babies', 'shoes', 'babies', 70);


    INSERT INTO product_group ([supplier_id], [name], [category],
        [type], [price]) 

        VALUES (5, 'socks babies', 'socks', 'babies', 30);


    -- insert data in product table

    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (1, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (1, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (1, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (2, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (2, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (2, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (3, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (3, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (3, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (4, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (4, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (4, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (5, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (5, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (5, 'l', 'gray');

    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (6, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (6, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (6, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (7, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (7, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (7, 'l', 'gray');
        

    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (8, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (8, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (8, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (9, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (9, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (9, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (10, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (10, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (10, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (11, 'l', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (11, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (11, 's', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (12, 'l', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (12, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (12, 's', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (13, 'l', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (13, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (13, 's', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (14, 'l', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (14, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (14, 's', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (15, 'l', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (15, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (15, 's', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (16, 'l', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (16, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (16, 's', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (17, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (17, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (17, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (18, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (18, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (18, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (19, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (19, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (19, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (20, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (20, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (20, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (21, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (21, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (21, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (22, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (22, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (22, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (23, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (23, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (23, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (24, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (24, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (24, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (25, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (25, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (25, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (26, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (26, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (26, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (27, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (27, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (27, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (28, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (28, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (28, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (29, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (29, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (29, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (30, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (30, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (30, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (31, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (31, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (31, 'l', 'gray');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (32, 's', 'black');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (32, 'm', 'blue');


    INSERT INTO product ([product_group_id], [size], [color]) 

        VALUES (32, 'l', 'gray');


    -- insert data in supply table

    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (1, 249, '2013-11-23 12:42:37');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (1, 997, '2011-11-18 10:27:14');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (1, 592, '2014-04-08 02:46:07');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (2, 319, '2012-05-10 20:59:43');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (2, 429.15, '2010-01-19 14:56:00');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (2, 731, '2010-09-04 22:18:58');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (3, 915, '2010-05-26 04:48:18');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (3, 969, '2014-10-08 11:19:51');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (3, 243, '2012-05-10 08:19:14');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (4, 117, '2014-10-18 11:21:17');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (4, 117, '2012-04-01 19:50:41');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (4, 315, '2011-03-07 03:58:23');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (5, 558, '2014-01-27 09:16:56');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (5, 601, '2012-08-09 02:33:53');


    INSERT INTO supply ([supplier_id], [price], [created_at]) 

        VALUES (5, 839, '2010-05-27 06:09:13');


    -- insert data in supply_product table

    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 1, 89);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 2, 73);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 3, 72);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 4, 38);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 5, 94);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 6, 65);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 7, 44);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 8, 74);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 9, 37);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 10, 29);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (1, 11, 37);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 12, 32);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 13, 66);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 14, 36);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 15, 42);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 16, 101);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 17, 61);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 18, 43);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 19, 27);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 20, 58);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 21, 29);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 22, 80);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 23, 61);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (2, 24, 74);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (3, 25, 68);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (3, 26, 27);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (3, 27, 53);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (3, 28, 79);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (3, 29, 27);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (3, 30, 101);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 31, 59);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 32, 27);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 33, 44);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 34, 100);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 35, 72);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 36, 91);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 37, 65);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 38, 66);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 39, 62);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 40, 78);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 41, 84);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 42, 27);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (4, 43, 95);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 44, 38);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 45, 63);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 46, 62);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 47, 92);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 48, 41);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 49, 77);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 50, 40);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (5, 51, 26);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (6, 52, 30);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (6, 53, 54);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (6, 54, 71);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (6, 55, 38);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (6, 56, 80);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (6, 57, 100);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 58, 73);

    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 59, 89);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 60, 52);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 61, 77);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 62, 41);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 63, 46);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (7, 64, 101);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (8, 65, 24);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (8, 66, 48);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (8, 67, 101);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (8, 68, 36);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (9, 69, 73);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (9, 70, 85);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (9, 71, 37);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (9, 72, 23);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (10, 73, 64);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (10, 74, 55);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (11, 75, 100);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (11, 76, 90);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (12, 77, 100);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (12, 78, 99);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 79, 74);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 80, 76);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 81, 86);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 82, 95);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 83, 66);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 84, 47);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 85, 97);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (13, 86, 71);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (14, 87, 49);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (14, 88, 49);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (14, 89, 43);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (14, 90, 81);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (14, 91, 42);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (15, 92, 93);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (15, 93, 36);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (15, 94, 38);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (15, 95, 63);


    INSERT INTO supply_product ([supply_id], [product_id], [quantity])

        VALUES (15, 96, 74);
        

    -- insert data in purchase table

    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (2, '2018-10-07 16:49:10');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (1, '2016-03-18 14:20:55');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (9, '2015-11-03 20:56:22');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2016-02-19 12:21:27');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (19, '2018-02-08 12:52:10');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (11, '2017-05-07 14:06:14');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2015-12-19 20:57:01');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (3, '2019-04-01 14:55:48');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (11, '2017-12-02 08:33:58');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (12, '2018-02-21 07:22:58');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2019-02-16 14:41:22');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (9, '2016-02-06 09:18:36');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2015-09-13 12:27:31');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2019-05-26 17:41:13');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2017-08-25 13:16:08');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (17, '2016-08-19 13:03:51');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (10, '2019-03-02 17:00:37');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2016-04-11 18:56:58');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (1, '2016-07-11 16:03:20');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2019-02-01 12:23:08');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (5, '2019-07-23 15:00:15');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (13, '2019-03-11 07:07:27');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (16, '2018-05-03 14:51:23');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2019-01-12 20:57:34');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (17, '2018-10-16 09:41:57');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (15, '2016-05-06 09:55:07');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (8, '2018-05-30 13:17:33');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2018-03-13 08:06:41');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (17, '2017-05-19 12:01:38');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (8, '2015-02-03 08:36:27');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (5, '2015-05-03 09:11:49');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2015-04-26 15:00:26');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2018-08-26 08:38:26');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2018-03-16 12:00:44');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (12, '2015-10-03 10:40:47');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2018-05-20 19:16:45');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (12, '2015-08-05 08:54:55');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2016-08-28 20:25:46');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (10, '2018-09-25 09:35:24');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (3, '2017-12-14 18:20:04');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (15, '2015-08-03 12:30:35');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (10, '2015-10-28 12:59:00');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (17, '2018-02-17 09:54:59');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (6, '2016-08-02 11:55:54');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (2, '2018-08-05 08:25:32');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (10, '2017-08-22 12:21:07');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2018-12-30 20:52:36');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2018-09-28 13:53:37');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2016-09-29 14:57:03');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (10, '2016-11-23 11:22:03');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (12, '2015-07-10 14:47:59');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (9, '2015-09-05 07:18:51');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (2, '2018-06-14 11:52:52');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (6, '2016-09-03 14:12:07');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (2, '2016-05-31 15:18:03');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (17, '2019-05-26 13:00:50');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (3, '2015-03-09 16:45:17');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (19, '2016-07-27 17:39:12');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2016-10-23 11:34:56');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2018-05-10 11:33:29');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (9, '2016-11-17 08:18:27');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (1, '2019-03-13 15:40:50');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (12, '2017-05-31 15:38:59');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (3, '2016-12-12 00:24:45');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2017-04-19 15:42:01');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (17, '2018-04-10 13:03:17');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (16, '2018-09-11 17:02:00');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (5, '2016-09-07 17:54:13');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (10, '2016-01-23 08:41:15');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2015-04-14 09:28:26');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (7, '2017-08-27 07:28:26');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2015-03-08 13:08:56');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (1, '2016-06-11 12:02:19');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (8, '2015-12-21 10:40:45');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (15, '2019-04-07 16:21:12');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (8, '2015-02-15 19:50:46');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (3, '2018-04-05 19:22:42');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2015-04-20 09:53:33');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (16, '2016-12-31 10:24:47');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (16, '2018-06-22 11:34:06');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (6, '2017-07-15 14:34:57');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2015-10-08 14:49:54');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2017-01-29 09:45:06');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (4, '2016-07-05 15:47:56');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2015-10-28 19:32:39');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (4, '2018-07-14 15:08:27');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (15, '2016-06-27 10:14:56');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2015-02-04 12:56:33');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (6, '2018-10-04 07:48:27');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2019-02-21 11:44:45');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (12, '2016-03-06 09:33:46');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (18, '2018-06-28 20:33:14');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (15, '2017-05-08 15:22:28');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (5, '2016-03-13 20:30:55');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (2, '2019-02-22 17:16:31');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (14, '2018-06-18 18:59:49');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2015-08-07 10:48:38');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (20, '2016-10-28 09:55:00');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (5, '2015-12-19 18:24:13');


    INSERT INTO purchase ([customer_id], [created_at])

        VALUES (3, '2015-08-06 17:22:54');


    -- insert data in purchase_product table

    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (72, 33, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (72, 64, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (90, 41, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (56, 21, 95);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (12, 68, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (63, 15, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (46, 92, 70.99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (89, 42, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (46, 86, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (5, 88, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (38, 62, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (52, 13, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (29, 10, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (52, 90, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (54, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (76, 19, 95);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (4, 75, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (64, 20, 95);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (36, 23, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (40, 67, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (90, 57, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (75, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (30, 10, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (11, 70, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (85, 15, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (86, 47, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (22, 84, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (44, 47, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (83, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (31, 26, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (77, 79, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (3, 65, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (31, 22, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (47, 72, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (88, 18, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (71, 2, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (100, 16, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (38, 39, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (73, 36, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (34, 66, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (63, 93, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (55, 70, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 65, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (34, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (64, 12, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (70, 33, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (40, 53, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 65, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (42, 37, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (71, 5, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (10, 51, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (96, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (60, 14, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (55, 27, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 67, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (27, 67, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (19, 2, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (84, 82, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (27, 75, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (15, 25, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (23, 79, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (67, 58, 82);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (56, 59, 82);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (60, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (2, 95, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (14, 70, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (9, 82, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (66, 7, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (42, 35, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (97, 12, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (83, 22, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (58, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (36, 68, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (51, 42, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (46, 10, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (23, 4, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (57, 5, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (44, 5, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (30, 71, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (47, 57, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (48, 75, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (47, 81, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (10, 27, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 93, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (2, 17, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (68, 77, 80);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (85, 74, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (100, 41, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (100, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (74, 30, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (47, 69, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (56, 62, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (13, 85, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (50, 65, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 31, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (90, 42, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (41, 94, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (21, 37, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (49, 76, 80);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (12, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (59, 49, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (38, 83, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (32, 66, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (6, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (86, 6, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (77, 74, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (30, 16, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (30, 75, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (61, 7, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (32, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (63, 57, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (1, 9, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (93, 8, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (57, 17, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (67, 82, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (79, 21, 95);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (85, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (79, 64, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (100, 70, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (10, 43, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (81, 79, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (75, 50, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (7, 2, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (88, 27, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (31, 25, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (47, 73, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (59, 91, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (95, 46, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (62, 10, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (5, 13, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (62, 1, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (98, 25, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (29, 44, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (92, 63, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 44, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (51, 66, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (20, 91, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (12, 51, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (73, 7, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (40, 3, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (88, 15, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (1, 50, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (57, 76, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (66, 68, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (80, 7, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (26, 7, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (68, 62, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (8, 87, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (35, 45, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 48, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (69, 85, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (32, 54, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (9, 32, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (22, 11, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (12, 58, 82);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (94, 46, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (27, 65, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (19, 36, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (92, 61, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (82, 66, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (75, 49, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (84, 63, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (97, 67, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (85, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (42, 49, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (74, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (56, 46, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (17, 31, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (5, 94, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (46, 21, 95);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (86, 22, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (87, 37, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (59, 85, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (80, 15, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (74, 88, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (28, 11, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (31, 5, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (37, 37, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (95, 47, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (19, 28, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (99, 6, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (42, 70, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (62, 43, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (13, 28, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (29, 88, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (73, 13, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (94, 55, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (92, 31, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (69, 23, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (49, 23, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (89, 82, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (6, 8, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (18, 34, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (34, 86, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (99, 78, 80);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (12, 10, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (73, 37, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (60, 67, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (78, 42, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (1, 60, 82);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (77, 2, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (22, 72, 165);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (69, 32, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (91, 57, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (33, 44, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (64, 96, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (17, 18, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (69, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (6, 16, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (16, 18, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (56, 44, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (15, 12, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 51, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (91, 22, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (96, 36, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (96, 11, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (4, 1, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (42, 91, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (55, 54, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (3, 91, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (3, 69, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (59, 59, 82);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (49, 12, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (62, 36, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (28, 53, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (37, 63, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (96, 31, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (53, 55, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (36, 33, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (97, 92, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (37, 22, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (33, 11, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (58, 1, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (95, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (68, 38, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (33, 25, 127);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (96, 44, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (46, 39, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (41, 43, 188);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (72, 80, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (26, 75, 90);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (54, 62, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (12, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (4, 30, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (13, 33, 44);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (18, 88, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (21, 50, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (41, 91, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (26, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (13, 23, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 53, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (100, 3, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 82, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (67, 5, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (61, 7, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (45, 82, 55);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 91, 70);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (40, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (99, 90, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (52, 36, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (78, 59, 82);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (77, 62, 35);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (86, 89, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (25, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (18, 34, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (17, 64, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (39, 46, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (16, 4, 92);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (77, 85, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (75, 52, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (43, 34, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (8, 15, 164);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (77, 90, 38);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (24, 39, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (23, 2, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (88, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (34, 18, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (22, 86, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (83, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (55, 39, 68);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (33, 2, 99);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (72, 94, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (33, 41, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (91, 40, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (85, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (85, 9, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (74, 85, 30);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (74, 18, 186);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (100, 11, 41);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (43, 8, 190);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (89, 67, 43);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (68, 42, 40);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (71, 24, 139);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (87, 28, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (37, 65, 198);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (30, 53, 67);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (65, 56, 57);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (33, 29, 64);


    INSERT INTO purchase_product ([purchase_id], [product_id], [price])

        VALUES (97, 67, 43);


    --- updating quantity of products

    UPDATE product 
    SET quantity = supply_product.q - purchase_product.q
    FROM product 

    INNER JOIN (

        SELECT product_id, SUM(quantity) AS q
        FROM supply_product 
        GROUP BY supply_product.product_id

    ) AS supply_product 
    ON product.id = supply_product.product_id

    INNER JOIN (

        SELECT product_id, COUNT(product_id) AS q
        FROM purchase_product 
        GROUP BY purchase_product.product_id

    ) AS purchase_product 
    ON product.id = purchase_product.product_id

    WHERE [deleted_at] IS NULL
        
END

GO


EXEC initData
GO