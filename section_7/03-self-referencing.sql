create table employees (
  id serial primary key, 
  first_name varchar(300) not null,
  last_name varchar(300) not null,
  supervisor_id int references employees (id) on delete set null
);