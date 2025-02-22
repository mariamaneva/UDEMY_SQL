-- count returns the number of occurences

-- select count(*) as seats from bookings; -- number of rows

-- select count(booking_date) from bookings; -- same if non null

-- select count(amount_tipped) from bookings; -- returns the non-null entries

-- select count(DISTINCT booking_date) from bookings; -- only unique values