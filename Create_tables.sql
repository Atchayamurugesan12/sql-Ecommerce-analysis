create database Ecommerce;
use Ecommerce;

create table orders(
user_id varchar(20),
product_id varchar(20),
category varchar(50),
price decimal(10,2),
discount int,
final_price decimal (10,2),
payment_method varchar(50),
purchase_date date
);

select * from ecommerce_details;








