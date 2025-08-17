-- solve
-- Select the database we want to work in
USE alx_book_store;

-- Query the INFORMATION_SCHEMA.COLUMNS system table to get the full schema of the 'books' table
-- This provides details similar to DESCRIBE, without using the forbidden keywords
SELECT 
    COLUMN_NAME AS 'Column Name',       -- Name of the column (e.g., book_id, title)
    COLUMN_TYPE AS 'Data Type',         -- Data type of the column (e.g., INT, VARCHAR(255))
    IS_NULLABLE AS 'Nullable',          -- Indicates whether NULL values are allowed (YES/NO)
    COLUMN_KEY AS 'Key',                -- Shows if it is a PRIMARY KEY, UNIQUE, etc.
    COLUMN_DEFAULT AS 'Default',        -- Default value for the column (if any)
    EXTRA AS 'Extra'                    -- Extra info like auto_increment
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'  -- Filter for the database
  AND TABLE_NAME = 'books';            -- Filter for the table 'books'

-- Running this query will output a list of columns in the 'books' table along with:
-- column name, data type, nullability, key info, default value, and extra details
