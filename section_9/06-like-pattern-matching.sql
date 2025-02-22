-- select first_name like 'Max', first_name from memberships; -- exactly Max
-- select first_name like 'Ma%', first_name from memberships; -- Ma(any letters)
-- select first_name like '_o%', first_name from memberships; -- (any letter)o(any letterS)

-- filtering:
-- select first_name from memberships
-- where first_name like 'J____';