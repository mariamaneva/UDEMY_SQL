-- select extract(month from last_checkin) from memberships; -- day | minute | year etc

-- select extract(dow from last_checkin) from memberships; -- (postress) dow - day of week sun - 0, sat - 6; also isodow is available, it's 0-based

-- select weekday(last_checkin) from memberships; --(mysql) mon - 0, sun 6;

-- select convert(last_checkin, date) from memberships;  --(myql) date | time

select last_checkin::timestamp::date from memberships; -- (postgres) date | time