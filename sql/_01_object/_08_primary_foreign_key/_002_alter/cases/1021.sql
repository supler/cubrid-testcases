-- [er]create class and add primary key on MONETARY data type

create class aoo ( a MONETARY primary key, b int, c int );
alter class aoo add primary key(a);

select attr_name, is_nullable from db_attribute where class_name = 'aoo' order by 1,2;

select * from db_index where class_name = 'aoo';

select * from aoo;

drop aoo;