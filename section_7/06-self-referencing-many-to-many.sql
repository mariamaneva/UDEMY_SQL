create table users (
  id serial primary key,
  first_name varchar(300) not null
);

create table users_friends (
  user_id int references users (id) on delete cascade,
  friend_id int references users (id) on delete cascade,
  check (user_id < friend_id), -- make sure existing friendships don't get duplicated
  primary key (user_id, friend_id)
);