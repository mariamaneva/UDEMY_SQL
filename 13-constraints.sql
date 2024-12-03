-- CREATE TABLE users (
--   full_name VARCHAR(100) NOT NULL,
--   -- ...
-- )


-- ALTER TABLE users 
-- ALTER COLUMN full_name SET NOT NULL,
-- ALTER COLUMN current_status SET NOT NULL; -- postgres

-- CREATE TYPE employment_status AS ENUM ('employed', 'self-employed', 'unemployed');


ALTER TABLE users 
MODIFY COLUMN full_name VARCHAR(255) NOT NULL,
MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemplyed') NOT NULL; -- mysql