use company;
create table salary(
cus_name varchar(50),
salary float
);

insert into salary values
('sahil',25000),
('rajesh',45000),
('vicky',56000); 

select avg(salary) from salary;

select cus_name from salary where salary > avg(salary);

select cus_name from salary where salary > (select avg(salary) from salary);

select * from titanic;

select * from titanic where age > (select age from titanic where passengerid = 894);

select passengerid from titanic where age = (select max(age) from titanic);

select passengerid from titanic where age < (select max(age) from titanic);


create view  femalePass as 
select * from titanic where passengerid = 900;

select * from femalepass;

use joins_sql;


create view newOrder as
select cus_name,address,city from cust_info 
where cus_id in (select cus_id from order_info where cus_id = 1);

select * from order_info;

select * from newOrder;

create view newOrdera as
select * from cust_info 
where cus_id in (select cus_id from order_info where cus_id = 1);

select * from newOrdera;


desc order_info;
desc cust_info;


create view new_order as 
select * from cust_info where cus_name = 'mehatab';
show create view new_order;
select * from new_order;
select cus_name , address, country from cust_info;



