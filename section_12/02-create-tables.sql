create table events (
  id serial primary key,
  name varchar(300) not null check (length(name) > 5),
  date_planned timestamp,
  image varchar(300),
  description text,
  max_participants int check (max_participants > 0),
  min_age int check (min_age > 0)
);
