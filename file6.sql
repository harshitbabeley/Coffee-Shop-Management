select count(order_id) from orders where user_id=(select user_id from customer where customer_name_first="Anjali");
select sum(price) from orders where user_id=(select user_id from customer where customer_name_first="Anjali");
