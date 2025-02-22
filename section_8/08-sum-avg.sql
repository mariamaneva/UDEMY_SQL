-- select sum(amount_billed) from bookings; -- aggregates number

select round(avg(num_guests), 1) from bookings; -- round with optional parameter denotes decimal places