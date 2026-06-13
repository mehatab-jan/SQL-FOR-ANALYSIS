create database funnier;
use funnier;

create table players(
player_id int,
player_name varchar(50),
country varchar(50),
goals int
);

select * from players;

insert into players values
(1,'ronaldo','canada',110),
(2,'messi','brazil',120),
(3,'neymar','qatar',100),
(4,'harthik','india',50),
(5,'bumra','india',75);

select * from players;

select * from players where goals > 100;


delimiter &&
create procedure top_players()
begin
select player_name,country,goals from players where goals > 100;
end&&
delimiter ;

call top_players();

delimiter &&
create procedure top_player_sort_goale(in num int)
begin
select player_name,country,goals from players order by goals desc limit 2;
end&&
delimiter ;

call top_player_sort_goale(2);
update players set goals = 200 where player_name = 'ronaldo';

set sql_safe_updates = 0;

delimiter //
create procedure update_player(in num int,in player varchar(50))
begin
update players set goals = num where player_name = player;
end //
delimiter //

call update_player(200,'messi');

select * from players;

delimiter //
create procedure player_count_country(in var varchar(50),out total_player int)
begin
select count(*) from players where country = var into total_player;
end//
delimiter ;

call player_count_country('india',@total_count);

                                                                                                                                                                                                                                                                                                                                 


