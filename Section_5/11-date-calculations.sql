-- all items fulfilled within 5 days
-- SELECT * FROM sales 
-- WHERE date_fulfilled - date_created <= 5;

-- same for timestamps
SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;