-- create the database
CREATE DATABASE IF NOT EXISTS online_shop;

-- cleanup for reperitive runs
-- DROP TABLE IF EXISTS products;

-- -- create the tables
-- CREATE TABLE IF NOT EXISTS products (
--   -- id PRIMARY KEY AUTO_INCREMENT, -- MySQL
--   -- id SERIAL KEY PRIMARY, -- Postgres
--   product_name VARCHAR(200) NOT NULL,
--   price DECIMAL (5, 2) CHECK (price > 0) NOT NULL,
--   description TEXT,
--   amount_in_stock BOOLEAN FALSE,
--   image VARCHAR(255)
-- )


-- -- insert dummy data

-- INSERT INTO products (product_name, price, description, amount_in_stock, image) VALUES
-- ('Laptop', 999.99, 'High performance laptop', TRUE, 'laptop.jpg'),
-- ('Smartphone', 499.99, 'Latest model smartphone', TRUE, 'smartphone.jpg'),
-- ('Headphones', 79.99, 'Noise-cancelling headphones', TRUE, 'headphones.jpg');