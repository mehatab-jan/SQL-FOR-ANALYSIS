use company;
show tables;
select * from titanic;

create  table passengeridage  as
select sum(age) , passengerid from titanic group by passengerid;

select * from passengeridage;

select a.passengerid,a.*,sum(a.age)
over (partition by a.passengerid) as 
total_age from titanic a; 


select row_number()  over  (order by age)
as row_num,passengerid,age from titanic
order by age;


select row_number() over (order by passengerid)
as row_num,passengerid,name from titanic
order by passengerid;

select row_number() over (order by name)
as row_num,passengerid,name from titanic
order by name;

create table myrecords (var_a int);


insert into myrecords values
(11),
(12),
(13),
(13),
(14),
(14),
(15),
(16);

select * from myrecords;

select var_a ,
rank() over (order by var_a) as test_ranks
from myrecords;


select passengerid from titanic 
where age = (select max(age) from titanic);

select passengerid from titanic order by
age desc limit 1;

select * ,first_value(passengerid) over
(order by age desc) as 
totalage from titanic; 








