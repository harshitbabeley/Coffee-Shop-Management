create database cafe_management_system;
use cafe_management_system;
show tables;
create table products(product_id int primary key, product_name varchar(50) not null, product_price float not null, availibility char(1) not null );
desc products;

desc customer;
create table customer(user_id int primary key, user_name varchar(50) not null, pass_word varchar(20) not null check(char_length(pass_word)>=10), customer_name_first varchar(30) not null,customer_name_last varchar(30) not null,contact_number char(10) not null ,address_house_no varchar(30) not null, address_street varchar(30) not null,address_city varchar(30) not null,address_state varchar(30) not null,check(contact_number like "__________" ));
drop table customer;

delete from orders where user_id=7;
create table employees(employee_id int primary key,employee_name_first varchar(20) not null,employee_name_last varchar(20) not null,designation varchar(30) not null, employee_contact varchar(10) not null check(employee_contact like "__________"),salary float not null);
desc employees;


select *from products;
select *from cust omer;
select *from orders;
select * from employees;
create table orders(order_id int primary key, transaction_id int not null, product_purchased varchar(50) not null, quatitiy_purchased int not null, price float not null, mode_of_payment char(2), user_id int not null, status_of_order char(1) not null, foreign key(user_id) references customer(user_id));

insert into orders values(1,1,"Espresso",2,2*(select product_price from products where product_name="Espresso"),'ON',1,'C');
truncate table orders;

SET @product_name = "Espresso";
(select product_price from products where product_name=@product_name);

ALTER TABLE orders MODIFY COLUMN order_id INT AUTO_INCREMENT;
alter table orders drop column status_of_order;

update orders set order_id=5 where order_id=10;

delete from orders where order_id=5;

ALTER TABLE orders AUTO_INCREMENT = 5;

update products set availibility='Y' where availibility='N'; 

create table delivery(order_id int not null,delivery_address_house_no varchar(30) not null,delivery_address_treet varchar(30) not null, delivery_address_city varchar(30) not null, delivery_address_state varchar(30) not null,delivery_partner_id int not null,delivery_partner_contact_no varchar(10) not null, customer_contact_no varchar(10) not null,amount_payable float not null, foreign key(order_id) references orders(order_id) );

truncate table employees;