-- inner join
-- select * from events e
-- inner join locations l on e.location_id = l.id;

-- left join
-- select * from events e
-- left join locations l on e.location_id = l.id;

-- filtering
-- select * from cities as c
-- left join locations l on l.city_name = c.name
-- left join events e on e.location_id = l.id
-- where c.name = 'Munich'; --filtering joined tables (where clause position is important)
