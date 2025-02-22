-- Insrt single row:
-- INSERT INTO sales (customer_name, product_name, volume, is_recurring)
-- VALUES ('Max Swartz', 'A Book', 12.99, TRUE);

-- Insert multiple rows:
INSERT INTO sales (date_fulfilled, customer_name, product_name, volume, is_recurring, is_desputed)
VALUES 
(
  NULL, 'Learning Inc', 'Course Bundle', 4889.62, FALSE, FALSE
), 
(
  '2020-01-01', 'Big Oil Inc', 'Trucks', 400000.0, FALSE, TRUE
);