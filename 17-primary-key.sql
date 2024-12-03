-- IMPORTANT: In relational databases, each table should contain a unique identifier for each row. This unique identifier is called a primary key. The primary key is used to uniquely identify each row in a table.

-- drop tables to recreate them with primary keys (unique identifiers)
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS "user"; -- user is a reserved keyword in Postgres
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS conversation;
DROP TABLE IF EXISTS conversations;

-- CREATE TYPE employment_status AS ENUM('self-employed', 'employed', 'unemployed'); -- Postgres only (if already created, don't run this line)

CREATE TABLE users (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY, -- Postgres
  first_name VARCHAR(200) NOT NULL,
  last_name VARCHAR(200) NOT NULL,
  -- full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)), -- generated column Mysql
  full_name VARCHAR(401) GENERATED ALWAYS AS (first_name || ' ' || last_name) STORED, -- generated column Postgres
  yearly_salary INT CHECK (yearly_salary > 0),
  current_status employment_status NOT NULL -- Postgres only
  -- current_status ENUM('self-employed', 'employed', 'unemployed') NOT NULL -- mySQL
);

CREATE TABLE employers (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY, -- Postgres
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  id SERIAL PRIMARY KEY, -- Postgres
  "user_id" INT NOT NULL,
  "employer_id" INT NOT NULL,
  message TEXT NOT NULL
);