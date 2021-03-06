--test (+),(-),(*) operators by operation between different set data types 

create class func_02 ( a set of int, b multiset of int , c list of int );
insert into func_02 values ( {},{},{});
insert into func_02 values ( null,null,null);
insert into func_02 values ( {1,1},{2,2},{3,3});
insert into func_02 values ( {1,2,3},{1,2,3},{1,2,3});
insert into func_02 values ( {-1,-2,-3},{-1,-2,-3},{-1,-2,-3});

select a + b + c from func_02 order by 1;	
select a - b - c from func_02 order by 1;	
select a * b * c from func_02 order by 1;	
select a + a  from func_02 order by 1;	
select a - a  from func_02 order by 1;	
select a * a  from func_02 order by 1;	
select b + b  from func_02 order by 1;	
select b - b  from func_02 order by 1;	
select b * b  from func_02 order by 1;	
select c + c  from func_02 order by 1;	
select c - c  from func_02 order by 1;	
select c * c  from func_02 order by 1;

drop  class func_02;
