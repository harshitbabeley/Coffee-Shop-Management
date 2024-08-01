set @order_id=12;
set @delivery_partner_id=1;  -- available 1 and 7

insert into delivery values(@order_id,(select address_house_no from customer where user_id=(select user_id from orders where order_id=@order_id)),(select address_street from customer where user_id=(select user_id from orders where order_id=@order_id)),(select address_city from customer where user_id=(select user_id from orders where order_id=@order_id)),(select address_state from customer where user_id=(select user_id from orders where order_id=@order_id)),@delivery_partner_id ,(select employee_contact from employees where employee_id=@delivery_partner_id),(select contact_number from customer where user_id=(select user_id from orders where order_id=@order_id)),(select price from orders where order_id=@order_id));

select * from delivery;
