autocommit off;
select country, city, latitude, longitude
from location
where latitude > 10 and latitude < 25
order by 1,2 for orderby_num() between 1 and 5;

delete from all accommodations (except bed_and_breakfast)
where allows_children = 'no' and rownum <= 10;
rollback;

select hotel.name, location.country, hotel.country, cost
from location, hotel
where hotel.country = location.country and name like 'Holi%'
	and ROWNUM > 5 and ROWNUM <= 10 order by 1,2;
	
select country, rownum/10 as number
from location
where mod(rownum, 10) = 0 order by 1;

select lodging
from location
where country = 'Jamaica' and city = 'Montego Bay' and inst_num() = 1 order by 1;

select rownum as number, name, country, cost
from resort r
where cost in ( select cost
		from hotel
		where allows_children = r.allows_children 
		and rownum <= 5
		union all
		select cost
		from bed_and_breakfast
		where rownum <= 5
		) order by 1,2;
		
select sum(n)
from (select number_of_pools
	from all accommodations
	where country = 'Jamaica' 
	 and rownum < 4
	union all
	select number_of_restaurants
	from all accommodations
	where country = 'Bahamas' 
	 and rownum < 3
	) as t(n) ;
	
select country
from hotel
where rownum between 1 and 10
order by country ;

select tbl.t
from (select country from hotel order by country) as tbl(t)
where rownum between 1 and 10 order by 1;

insert into snack (serving_hours)
select serving_hours
from dinner
where proper_attire_required = 'yes' and rownum <= 10;

update resort
set cost = $198.00
where name like 'T%' and rownum <= 10;

rollback;
