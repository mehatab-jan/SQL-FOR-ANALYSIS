use company;

show tables;
select * from book1;

select survived,count(*) from book1 
group by survived;

select sex, survived , count(*) from book1
group by sex, survived;

select ticket from  book1 ;
select sum(ticket) as total_sum from book1;

select * from book1;

select sum(fare) as total_sum from book1;
select round(sum(fare),2) as total_sum from book1;

select round(avg(ticket),2) as avg_tick from book1;

select max(ticket)  from book1;

select min(ticket)  from book1;