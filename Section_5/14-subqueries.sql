-- SELECT customer_name, product_name
-- FROM (SELECT * FROM sales WHERE volume > 1000) AS base_result;

-- alternative
-- a view is a one time command that gets stored by the DB engine. it can be re-invoked on subsequent queries. e.g. when it's commented
-- the view stores the query instructions not the query resutls; everytime it gets invoked, it runs the query
-- CREATE VIEW base_result AS SELECT * FROM sales WHERE volume > 1000; 

-- query definition
-- SELECT customer_name, product_name FROM base_result;

-- subqueries also work for inserting not only querying
INSERT INTO top_sales (<list of columns>)
SELECT ....;