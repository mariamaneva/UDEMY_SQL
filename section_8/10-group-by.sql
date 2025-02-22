-- select booking_date, sum(num_guests) from bookings group by booking_date;

-- select p.name, sum(b.num_guests)
-- from payment_methods as p
-- INNER JOIN bookings as b on b.payment_id = p.id 
-- group by p.name;

select p.name, b.booking_date, sum(b.num_guests)
from payment_methods as p
INNER JOIN bookings as b on b.payment_id = p.id 
group by p.name, b.booking_date;

