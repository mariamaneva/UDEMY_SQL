select u.id, first_name, last_name, street, house_number, c.name as city_name
from users as u
inner join addresses as a on u.address_id = a.id
inner join cities as c on a.city_id = c.id
WHERE c.name = 'Berlin';