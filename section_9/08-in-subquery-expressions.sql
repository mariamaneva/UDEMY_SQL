-- select email from customers;

-- select email from customers c
-- inner join orders o on o.customer_id = c.id;

-- select id FROM customers where first_name = 'max' OR first_name = 'Manu';

-- select ID
-- from customers where first_name in('Max', 'Manu'); -- same as above

-- select ID
-- from customers where first_name not in('Max', 'Manu');

select email 
from customers
where id in(
  select customer_id
  from orders
); -- only customers who placed an order