-- will work only in postgres for simplicity

create table projects (
    -- id int primary key AUTO_INCREMENT, -- mysql
  id serial primary key, -- postgres
  title varchar(300) not null,
  deadline date
);-- see the intermediate table on the bottom for the many to many relationships

create table company_buildings (
  -- id int primary key AUTO_INCREMENT, -- mysql
  id serial primary key, -- postgres
  name varchar(300) not null
);

create table teams (
    -- id int primary key AUTO_INCREMENT, -- mysql
  id serial primary key, -- postgres
  name varchar(300) not null,
  building_id int references company_buildings on delete set null
);

create table employees (
  -- id int primary key AUTO_INCREMENT, -- mysql
  id serial primary key, -- postgres
  first_name varchar(300) not null,
  last_name varchar (300) not null,
  birthdate date not null,
  -- email varchar(200) varchar intranet_accounts(email) -- no need to specify the column, as it will automatically look for the primary key
  email varchar(200) unique not null,
  team_id int references teams on delete set null
);

create table intranet_accounts (
  -- id int primary key AUTO_INCREMENT, -- mysql
  id serial primary key,-- postgres
  email varchar(200) references employees(email) on delete CASCADE,-- setthing this as foregin key allows 1:1 relationships to propagate: when a user is deleted their intranet account gets deleted too
  password varchar(200) not null
);

-- intermediate table for many to many relationships
create table projects_employees (
  -- id int primary key AUTO_INCREMENT, -- mysql
  -- id serial primary key,-- postgres
  -- employee_id int references employees on delete cascade,
  employee_id int,
  project_id int references projects on delete cascade,
  PRIMARY KEY (employee_id, project_id),
  foreign key (employee_id) references employees on delete cascade
);