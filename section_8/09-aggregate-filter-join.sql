-- select round(avg(amount_tipped)) from bookings
-- where amount_billed > 20 and num_guests > 2;

select max(num_guests), max(num_seats) from bookings as b
inner JOIN tables as t on b.table_id = t.id
inner join payment_methods as p on b.payment_id = p.id
where t.num_seats < 5 and p.name = 'Cash';