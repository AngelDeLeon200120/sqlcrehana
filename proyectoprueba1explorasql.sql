use sale_db;

create table products(
product_id int auto_increment primary key,
name varchar(100) not null,
description varchar(30),
type varchar(20)not null,
 price_usd float not null);
 
 create table Users (
id int auto_increment primary key,
name varchar(100) not null,
gender varchar(100) not null,
zip_code varchar(100) not null,
adress varchar(100) not null,
state varchar(100) not null,
city varchar(100) not null,
phone varchar(100) not null
);
 
 create table Sells(
order_id int auto_increment primary key,
date Date,
units INT,
amount float,
product_id int,
user_id int,
constraint fk_product_id Foreign key (product_id) references products(id) On delete no action,
constraint fk_user_id Foreign key (user_id) references Users(id) On delete no action
);


describe users;
Alter table users
ADD FISTName varchar(50),
ADD LASTName varchar(50);

describe products;
truncate table products;
select * from products;

DROP TABLE products;
