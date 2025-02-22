
-- Postgres only
CREATE TYPE employment_status AS ENUM ('employed', 'self-employed', 'unemplyed');

CREATE TABLE users (
  full_name VARCHAR(200),
  yearly_salary INT,
  -- current_status ENUM('employed', 'self-employed', 'unemplyed') -- MySQL syntax
  current_status employment_status -- Postgres syntax
);