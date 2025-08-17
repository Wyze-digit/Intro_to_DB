-- solved 
-- Select the database we want to use
-- This ensures that all operations happen inside 'alx_book_store'
USE alx_book_store;

-- Insert multiple new records into the 'customer' table
-- We specify the columns where data will be stored:
--   customer_id, customer_name, email, address
-- Then we provide multiple sets of values (one set per customer)

INSERT INTO customer (customer_id, customer_name, email, address)
VALUES
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');

-- After running this script, three new rows will be added to the 'customer' table
--   Customer 2: Blessing Malik
--   Customer 3: Obed Ehoneah
--   Customer 4: Nehemial Kamolu
