select *
from addresses as a
left join users as u on a.id = u.address_id
left join cities as c on c.id = a.city_id;