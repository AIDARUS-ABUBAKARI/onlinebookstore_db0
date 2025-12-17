-- 1.retrive all books in the "Fiction" genre:
select * from books
where genre = "Fiction";

-- 2. find book published after the year 1950:
select * from books
where published_year > 1950 
order by published_year asc;

-- 3. list all customers from the canada:
select * from customers
where country = "canada";

-- 4. show orders placed in november 2023:
select * from orders
where order_date between "2023/11/01" and "2023/11/30" ;

-- 5 retrieve the total stock of books available:
select 
sum(stock) as total_stock
from books;

-- 6. find the details of the most expensive book:
select 
title,
author,
published_year,
price
from books
where price = (select max(price)  as expensive_book );

-- 6. 2 way
select 
	title,
	author,
	published_year,
	price
from books
order by price desc;

-- 7. show all customers who ordered more than 1 quantity of a book:
select
c.customer_id,
 c.name,
c.city,
c.phone,
o.quantity,
o.total_amount
from orders as o
left join customers as c
on   c.customer_id = o.order_id
order by o.total_amount desc ;

-- 8. retrieve all orders where the total amount exceeds $20
select * from orders
where total_amount > 20;

-- 9. list all genres available in the books table
select genre from books;

-- 10. find the book with the lowest stock
select stock
from books
order by 1 asc;

-- 11. calculate the total revenue generated from all orders:
select sum(total_amount) as revenue
 from orders;
 
 

