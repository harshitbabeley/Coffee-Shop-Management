SET @transaction_id=10;
SET @user_id=2;
SET @product_name="Latte";
SET @Qunatity=1;
SET @mode_of_payment='ON';

insert into orders(transaction_id , product_purchased , quatitiy_purchased , price , mode_of_payment ,user_id) values(@transaction_id,@product_name,@Qunatity,@Qunatity*(select product_price from products where product_name=@product_name),@mode_of_payment,@user_id);

select * from orders;