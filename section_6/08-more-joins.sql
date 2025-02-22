select distinct name as city_name
from cities as c
left join addresses as a on a.city_id = c.id
left join users as u on u.address_id = a.id;