create database company;
use company;
create table emp_d0512
( 
first_name varchar(50), last_name varchar(50),title varchar(50),age int,salary int);


desc emp_d0512;
alter table emp_d0512 add column gender varchar(1);

alter table emp_d0512 modify salary int not null;
alter table emp_d0512 drop column gender;
insert into emp_d0512 values
('mehatab','jaan','employee',21,20000),
('rushalini','dampetla','analyst',27,30000),
('likhitha','machupali','developer',21,40000)


select * from emp_d0512;


create table my_employee(
first_name varchar(50),
last_name varchar(50),
id int not null,
age int,
city varchar(50),
state varchar(50));
alter table my_employee add primary key (id) ;
select * from my_employee;
desc my_employee;
insert into my_employee values
('mehatab','jan',1001,20,'anantapur','AP'),
('rushalini','dampetla',1002,21,'MPL','MH'),
('likhitha','machupali',1003,21,'KDR','UP'),
('abdul','musaveer',1004,19,'ATP','JK'),
('nur','jahan',1005,37,'AGM','MP'),
('tahreem','tasleem',1006,22,'WB','RJ');


select count(id) as id_count from my_employee;

select first_name,last_name,id from my_employee;

select count(*) from my_employee;

select first_name from my_employee where age >= 25 and age <= 50;
select * from my_employee where age in (20,22);

select * from my_employee where last_name like 'm%';

select * from my_employee where first_name like 'm%';

select first_name from my_employee where first_name like '%a%';


create table emp_old
(
first_name varchar(50),
last_name varchar(50),
desgination varchar(50),
age int,
salary float
);

select * from emp_old;

insert into emp_old values
('Mehatab','jan','employee',21,195000.00),
('rushalini','damptela','secretary',20,1850000.00);

insert into emp_old values
('likhitha','machupali','programmer',22,345000.00),
('jahnavi','v','programmer',23,432000.00),
('swathi','dandu','data analyst',24,22800.00),
('aishitha','chikki','chef',35,54700.00),
('harshitha','harshi','programmer',27,895000.00);


select first_name,salary from emp_old;

select first_name,salary from emp_old where desgination = 'secretary';

select first_name,salary from emp_old where desgination like '%programmer';

select first_name from emp_old where first_name like '%tha'; 


select * from emp_old where first_name like '_ehatab'; 

set sql_safe_updates = 0;

update emp_old set desgination = 'senior programmer' where age = 23;

update emp_old set desgination = 'Sr.Analyst' where first_name = 'swathi' and age = 24;


select * from emp_old;

update emp_old set desgination = 'Sr.Analyst' , age = age + 1 where first_name = 'swathi';







