-- select max(num_seats) from tables;

-- select max(amount_billed) as max_billed, max(amount_tipped) as max_tipped from bookings;

-- select min(category), max(category) from tables; -- works for strings - large is the first alphabetical entry, small is second alphabetical entry

select min(booking_date), max(booking_date) from bookings; -- works for dates, min is earlier max is later