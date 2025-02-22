-- create the database
-- CREATE DATABASE IF NOT EXISTS online_shop; -- MySQL
-- CREATE DATABASE online_shop; -- Postgres (run separately)

-- use the database 
-- USE online_shop; -- MySQL


-- cleanup for reperitive runs
DROP TABLE IF EXISTS products;

-- create the table
CREATE TABLE IF NOT EXISTS products (
    -- id INT AUTO_INCREMENT PRIMARY KEY, -- MySQL
    id SERIAL PRIMARY KEY, -- Postgres
    product_name VARCHAR(200) NOT NULL,
    description TEXT,
    price DECIMAL(6, 2) NOT NULL,
    -- description TEXT,
    amount_in_stock INT DEFAULT 0,
    image VARCHAR(255)
  );

-- insert constraints
ALTER TABLE products ADD CONSTRAINT chk_price CHECK (price > 0),
ADD CONSTRAINT chk_amount_in_stock CHECK (amount_in_stock >= 0);

-- -- alternative way to add constraints
-- ALTER TABLE producs 
-- MODIFY COLUMN price NUMERIC(10, 2) NOT NULL CHECK (price > 0) --postgres
-- ALTER COLUMN amount_in_stock INT DEFAULT 0 CHECK (amount_in_stock >= 0) --MySQL

-- insert dummy data
INSERT INTO
  products (
    product_name,
    description,
    price,
    amount_in_stock,
    image
  )
VALUES
  (
    'Laptop',
    'A laptop for all your needs',
    1000.00,
    10,
    '/laptop.jpg'
  );

INSERT INTO
  products (
    product_name,
    description,
    price,
    amount_in_stock,
    image
  )
VALUES
  (
    'Mouse',
    'A mouse for all your needs',
    10.00,
    100,
    '/mouse.jpg'
  );

INSERT INTO
  products (
    product_name,
    description,
    price,
    amount_in_stock,
    image
  )
VALUES
  (
    'Keyboard',
    'A keyboard for all your needs',
    50.00,
    50,
    '/keyboard.jpg'
  );