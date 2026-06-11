use company;
select * from emp_old;

select * from my_employee;

select concat(first_name,last_name)
from my_employee;


select trim(concat(first_name,last_name))
from my_employee;

select substring("SQL IS FUN",5,10) as sub_str;

select substr("mehatab jaan",9,12) as extractedstr;

select concat(first_name, upper(first_name)) as upper_case
from my_employee;
select concat(first_name, lower(first_name)) as lower_case
from my_employee;


select character_length("hello sql") as ch_len;

select character_length(first_name) from my_employee;

select mid("mehatab jan",4,9) as mid_val;

select mid(first_name,2,3) as mid_first from my_employee;


