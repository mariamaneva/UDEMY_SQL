-- Select all from a table
-- SELECT * FROM sales;

-- Select only some columns within a table
-- SELECT customer_name, product_name, volume, date_created FROM sales;

-- Change column names for a query
-- SELECT customer_name, product_name, volume AS total_sales FROM sales;

-- Hardcoded columns (when certain data needs to be added to a row)
-- SELECT 'hello world', product_name, customer_name FROM sales;

-- Perform opeartion on columns
SELECT product_name, customer_name, volume / 1000 FROM sales;


