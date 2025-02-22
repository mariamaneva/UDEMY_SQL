-- select first_name, last_name 
-- from customers
-- where email = 'max@test.com';


-- select exists(
--   select first_name, last_name 
--   from customers
--   where email = 'max@test.com'
-- ); --true; more efficient than select, as it stops once it evaluates to true


select o.id from orders as o
where exists(
  select email from customers as c
  where o.customer_id = c.id and c.email = 'manu@test.com'
)
