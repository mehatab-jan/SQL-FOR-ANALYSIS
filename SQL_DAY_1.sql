create database products;
create table products.choco(ch_id int,ch_name varchar(50),ch_price int);
insert into products.choco values(101,'dairy',100000);
insert into products.choco VALUES
(102,'kitkat',200000),
(103,'snickers',300000),
(104,'dark chocolates',400000),
(105,'milky bar',500000),
(106,'galaxy',600000),
(107,'munch',450000),
(108,'bounty',550000),
(109,'mars',880000),
(110,'kinder',760000);
use products;
select * from choco;
UPDATE CHOCO SET CH_NAME = "CANDY" WHERE CH_ID = 101;
SELECT * FROM CHOCO WHERE CH_ID = 101;
ALTER TABLE CHOCO ADD constraint PRIMARY KEY(CH_ID);
DROP TABLE CHOCO;
SELECT * FROM CHOCO WHERE CH_ID = 'NULL';
delete FROM CHOCO WHERE CH_ID IS NULL;
