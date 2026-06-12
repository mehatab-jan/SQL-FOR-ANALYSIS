use joins_sql;
show tables;
select * from order_info;


select shipperid,orderid, datediff(sysdate(),orderdate)  as datedifference from order_info;

select date_format('2020-06-04','%y');

select date_format('2020-06-04','%m');

select date_format('2020-06-04','%d');


select day('2026-06-12');

select adddate('2026-06-12', interval 10 day);

select adddate('2026-06-12', interval 10 month);

select adddate('2026-06-12', interval 10 year);


select adddate('2026-06-12', interval 10 quarter);

