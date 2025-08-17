-- solution to task 5
-- Select the database we want to use
-- This ensures that any command we run will apply inside 'alx_book_store'
USE alx_book_store;

-- Insert a single new record into the 'customer' table
-- We specify the columns we want to insert into:
--   customer_id, customer_name, email, address
-- Then we provide the corresponding values for each column
INSERT INTO customer (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');

-- After running this script, a new row will be created in the 'customer' table
-- with the details of the customer 'Cole Baidoo'
