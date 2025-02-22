-- select * from orders;


-- select amount_billed,
--   case when amount_billed > 15 and amount_billed < 30 then 'Normal day'
--         when amount_billed > 30 then 'Good day'
--         else 'Bad day'
--   END
-- from orders;


select weekday_number,
  case when weekday_number = 1 then 'Monday'
        when weekday_number = 2 then 'Tuesday'
        else 'Etc...'
  end as weekday_name
from (
  select extract(dow from last_checkin) + 1 as weekday_number
  from memberships
) as weekday_numbers;