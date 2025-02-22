-- you can join the table with itself
select * from employees as e1
INNER JOIN employees as e2 on e1.supervisor_id = e2.id;