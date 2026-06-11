use company;
create database joins_sql;
use joins_sql;

create table cust_info
(
cus_name varchar(50),
cus_id int,
address varchar(30),
city varchar(50),
postalcode varchar(50),
country varchar(20),
primary key (cus_id)
);

create table order_info
(
orderid int,
cus_id int,
emp_id int,
orderdate datetime,
shipperid int,
primary key (orderid)
);

insert into cust_info values
('mehatab',1,'gtkl','mpl',10051,'india'),
('rushalini',2,'gp','mpl',10045,'india'),
('likki',3,'kdr','atp',10056,'hong kong'),
('nurjahan',4,'gty','knl',10067,'brazil'),
('yasmin',5,'ymg','knl',10053,'canada'),
('ayesha',6,'hdp','cht',10034,'qatar'),
('faraz',7,'hdp','any',10021,'butan');

insert into cust_info values
('jaan',8,'gtkl','mpl',10059,'india');

select * from cust_info;


insert into order_info values
(101,1,11,sysdate(),1001),
(102,2,12,sysdate(),1002),
(103,3,2,sysdate(),1003),
(104,4,3,sysdate(),1004),
(105,5,3,sysdate(),1005),
(106,6,4,sysdate(),1006),
(107,7,4,sysdate(),1007);

insert into order_info values
(108,8,11,sysdate(),1008);

insert into order_info values
(109,9,21,sysdate(),1009);



drop  table order_info;


select * from order_info;




select c.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c left join order_info o 
on c.cus_id = o.cus_id;


select o.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c right join order_info o 
on c.cus_id = o.cus_id;


select c.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c inner join order_info o 
on c.cus_id = o.cus_id;

select c.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c left outer join order_info o 
on c.cus_id = o.cus_id
union
select o.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c right  outer join order_info o 
on c.cus_id = o.cus_id;

select c.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c left  join order_info o 
on c.cus_id = o.cus_id
union
select o.cus_id ,c.cus_name,c.country ,o.orderid,o.orderdate 
from cust_info c right  join order_info o 
on c.cus_id = o.cus_id;


select cust_info.* ,order_info.*
from cust_info
left join order_info
on cust_info.cus_id = order_info.cus_id
union
select cust_info.* ,order_info.*
from cust_info
right join order_info
on cust_info.cus_id = order_info.cus_id;

select *
from cust_info
inner join order_info
on cust_info.cus_id = order_info.cus_id;


use company;

show tables;
select * from book1;

