-- Greater/smaller
-- SELECT * FROM sales WHERE volume > 1000;
-- SELECT * FROM sales WHERE volume >= 1000;

-- Uisng IS for nulls, booleans
-- SELECT * FROM sales WHERE is_recurring IS TRUE;

-- is not operator
-- SELECT * FROM sales WHERE date_fulfilled IS NOT NULL;

-- <> - is not for string comparison
-- SELECT * FROM sales WHERE customer_name <> 'Max Schwarz';



-- MULTIPLE CONDITIONS
-- it is possible to group conditions with brackets
SELECT * FROM sales WHERE is_disputed IS TRUE AND volume > 5000; 

