-- select booking_date, amount_tipped, sum(amount_tipped) over()
-- from bookings; --adds the aggregate to each row

-- select booking_date, amount_tipped, sum(amount_tipped) over(PARTITION BY booking_date)
-- from bookings; -- adds the aggredate result for given window to each row

-- select booking_date, amount_tipped, sum(amount_tipped) over(PARTITION BY booking_date order by amount_billed)
-- from bookings; -- adds the aggredate result for given window to each row executed by order by param (for each widnow)

select booking_date, amount_tipped, rank() over(PARTITION BY booking_date order by amount_billed)
from bookings; -- same as above, but adds a rank column (row number)

