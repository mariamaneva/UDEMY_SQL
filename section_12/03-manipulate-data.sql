-- insert into events (
--   name, 
--   date_planned, 
--   description,
--   max_participants,
--   min_age
-- )
-- values (
--   'A first event',
--   '2022-10-29 16:30:00',
--   'This is the description of this first event.',
--   20,
--   18
-- ),
-- (
--   'A second event',
--   '2022-11-05 14:00:00',
--   'This is the description of the second event.',
--   30,
--   21
-- ),
-- (
--   'A third event',
--   '2022-11-12 10:00:00',
--   'This is the description of the third event.',
--   25,
--   16
-- ),
-- (
--   'A fourth event',
--   '2022-11-19 18:00:00',
--   'This is the description of the fourth event.',
--   50,
--   18
-- );

-- update events
-- set min_age = 16
-- where id = 1;

delete from events
where id = 1;