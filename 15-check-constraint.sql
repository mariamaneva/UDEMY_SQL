-- CREATE TABLE users (
--   full_name VARCHAR(200) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0),
--   current_status ENUM('employed', 'self-employed', 'unemplyed'), -- single column
--   CHECK (yearly_salary < max_salary) -- multiple columns
-- );

-- fix existing record that doesn't satisfy check constraint
-- UPDATE users SET yearly_salary = NULL
-- WHERE full_name = 'Margaret Thompson'; -- will fail

ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0); -- postgres & mysql; giving constraint a name helps re-usability