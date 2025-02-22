create table payment_methods (
  id serial primary key,
  name varchar(200)
);

create table tables (
  id serial primary key,
  num_seats int,
  category varchar(200)
);