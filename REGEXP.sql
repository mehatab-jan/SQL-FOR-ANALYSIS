use company;
select * from titanic;
select count(*) from titanic where name like "m%";

select count(*) from titanic where name  regexp '^m';

 select count(*) from titanic where name like "k%" 
 or name like "w%" 
 or name like  "m%" ;
 
 select count(*) from titanic where name regexp '[kwm]';
 
 
 select count(*) from titanic where name regexp '[k-m]';
 
 
 select count(*) from titanic where gender like 'f%' or gender like  'm%';
 
 select count(*) from titanic where gender  regexp '^m';
 
 select count(*) from titanic where gender regexp '[f%m%]';
 
 select * from titanic where age regexp '[3-5]';
 
 
 select * from titanic where age like "3%" or age like "%5";
 