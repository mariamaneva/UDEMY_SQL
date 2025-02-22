-- CREATE TABLE users (
--   -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--   id SERIAL PRIMARY KEY, -- Postgres
--   first_name VARCHAR(200) NOT NULL,
--   last_name VARCHAR(200) NOT NULL,
--   -- full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)), -- generated column Mysql
--   full_name VARCHAR(401) GENERATED ALWAYS AS (first_name || ' ' || last_name) STORED, -- generated column Postgres
--   yearly_salary INT CHECK (yearly_salary > 0),
--   current_status employment_status NOT NULL -- Postgres only
--   -- current_status ENUM('self-employed', 'employed', 'unemployed') NOT NULL -- mySQL
-- );


INSERT INTO users (first_name, last_name, yearly_salary, current_status) VALUES ('Max', 'Schwarz', 1000, 'self-employed');