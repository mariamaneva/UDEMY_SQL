select * from users
where id < 3
UNION
select * from users
where id > 3; --merges the rows of 2 tables, make sure you merge rows with the same structure