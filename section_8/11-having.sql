-- select booking_date, count(booking_date)
-- from bookings
-- where amount_billed > 30
-- group by booking_date;


select booking_date, count(booking_date)
from bookings
group by booking_date
having sum(amount_billed) > 30; -- where sum(amount_billed) > 30, but that's not possible with aggregate functions, so we use group by