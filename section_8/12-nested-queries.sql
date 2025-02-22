-- select * from bookings
-- where booking_date = '2021-11-05';

-- select day, min(daily_sum)
-- from (
--   select booking_date as day, sum(amount_billed) as daily_sum
--   from bookings
--   group by booking_date
-- ) group by day;


select booking_date
from bookings
GROUP by booking_date
having sum(amount_billed) = (
  select min(daily_sum)
  from (
    select booking_date, sum(amount_billed) as daily_sum
    from bookings
    group by booking_date
  ) as daily_table
);
