
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

create table users (
  id serial primary key,
  first_name varchar(300) not null,
  last_name varchar(300) not null,
  birthdate date not null,
  email varchar(300) not null
);

create table organizers (
  password varchar(500) not null,
  user_id int primary key references users (id) on delete cascade
);

create table tags (
  name varchar(100) primary key
);

create table events (
  id serial primary key,
  name varchar(300) not null check (length(name) > 5),
  date_planned timestamp,
  image varchar(300),
  description text,
  max_participants int check (max_participants > 0),
  min_age int check (min_age > 0),
  location_id int references locations on delete cascade,
  organizer_id int references organizers on delete cascade
);


create table events_users (
  event_id int references events (id) on delete cascade,
  user_id int references users (id) on delete cascade,
  primary key (event_id, user_id)
);

create table events_tags (
  event_id int references events on delete cascade,
  tag_name varchar(100) references tags (name) on delete cascade,
  primary key (event_id, tag_name)
);