insert into cities(name) values ('Berlin'), ('New York'), ('London');


insert into addresses (street, house_number, city_id) values 
('Teststreet', '8A', 3),
('Some street', '10', 1),
('Teststreet', '1', 3),
('My street', '101', 2);

insert into users (
  first_name,
  last_name, 
  email,
  address_id
) values 
('Max', 'Schwarz', 'max@test.com', 2),
('Manuel', 'Laurence', 'manu@test.com', 4),
('Julie', 'Barnes', 'julie@banes.com', 3);