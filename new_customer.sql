set @user_id=12;
set @user_name="atul";
set @pass_word="atulpandey1234";
set @firstname="atul";
set @lastname="pandey";
set @contact="1256789098";
set @house_no="34";
set @street="sgrinivasnagar";
set @city="manglore";
set @state="karnataka";

insert into customer values( @user_id,@user_name,@pass_word,@firstname,@lastname,@contact,@house_no,@street,@city,@state);

select * from customer;