CREATE TABLE emplyers (
  company_name VARCHAR(250),
  company_address VARCHAR(300),
  --yearly_revenue FLOAT(5,2) -- Allowed: 123.12, 12.1 Not allowed: 1234.12, 1.234
  yearly_revenue NUMERIC(5,2),
  is_hiring BOOLEAN DEFAULT FALSE
);