-- Altering dates

-- select membership_start + 7 from memberships; --mysql; timestamp
-- select date_add(membership_start, 7) from memberships; --mysql; 2021-10-08
-- select date_add(membership_start, interval 7 days) from memberships; --mysql; specify interval


-- select membership_start + 7 from memberships; --postgres; 2021-10-08 adds days
-- select membership_start + interval '7 years' from memberships; --postgres; 2021-10-08 specifies interval


