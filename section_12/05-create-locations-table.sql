
create table cities (
  name varchar(200) primary key 
);

create table locations (
  id serial primary key,
  title varchar(300),
  street varchar(300) not null,
  house_number varchar(10) not null,
  postal_code varchar(5) not null,
  city_name varchar(200) references cities (name) on delete restrict -- not allowing to delete
);

create table events (
  id serial primary key,
  name varchar(300) not null check (length(name) > 5),
  date_planned timestamp,
  image varchar(300),
  description text,
  max_participants int check (max_participants > 0),
  min_age int check (min_age > 0),
  location_id int references locations on delete cascade
);
