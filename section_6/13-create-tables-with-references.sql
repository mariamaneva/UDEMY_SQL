create table addresses (
  id int primary key AUTO_INCREMENT, -- Mysql
  -- id serial primary key, -- postgres
  street VARCHAR(300) not null,
  house_number varchar(50) not null,
  city_id int not null
);


create table users (
  id INT primary key AUTO_INCREMENT, -- MySql
  -- id serial primary key, --postgress
  first_name VARCHAR(300) not NULL,
  last_name varchar(300) not null,
  email varchar(300) not null,
  address_id int not null,
  foreign key (address_id) int references addresses(id) on delete restrict  -- restrict | cascade | set null | set default | no cation (default)
);


create table cities (
  id INT PRIMARY KEY AUTO_INCREMENT,   name varchar(300) NOT NULL
);

