
drop table if exists books;
create table books(
book_id serial primary key,
title varchar (100),
author varchar (100),
genre varchar (50),
published_year int,
price numeric (10,2),
stock int
);

drop table if exists customers;
create table customers(
customer_id serial primary key,
name varchar (100),
email varchar (100),
phone varchar (15),
city varchar (50),
country varchar (150)
);

drop table if exists orders;
create table orders(
order_id serial primary key,
customer_id int references customers(customer_id),
book_id int references books(book_id),
order_date date,
quantity int,
total_amount numeric (10,2)
);
