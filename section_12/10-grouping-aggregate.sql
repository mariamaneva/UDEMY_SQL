
--exact
-- select * from users 
-- where first_name = 'Max';
 
--fuzzy (like)
-- select * from users 
-- where first_name like 'Ma%'; -- all names that start with 'Ma' and contain 1 any character at the end




-- AGGREGATE
-- built in functions to condense multiple rows in to 1 number

-- SELECT count(id) from locations; -- min/max, etc. see documentation





-- GROUPING WITH AGGREGATE 

-- aggregate rows by certain criteria
-- select c.name, count(l.id) from cities c
-- left join locations l on l.city_name = c.name
-- GROUP BY c.name;



-- HAVING
-- having vs where - where filters row results before aggregation, while having filters groups after group by is applied

aggregate rows by certain criteria
select c.name, count(l.id) from cities c
left join locations l on l.city_name = c.name
GROUP BY c.name
having count(l.id) > 2;