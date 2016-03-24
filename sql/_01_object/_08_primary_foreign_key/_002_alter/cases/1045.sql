-- create class and add FOREIGN key on DOUBLE data type

create class aoo ( a DOUBLE primary key, b int, c int );

select attr_name, is_nullable from db_attribute where class_name = 'aoo' order by 1,2;

select * from db_index where class_name = 'aoo';

select * from aoo;

create class boo (b DOUBLE ,a DOUBLE  );
ALTER TABLE boo ADD CONSTRAINT fk_a FOREIGN KEY (a) REFERENCES aoo(a);

select attr_name, is_nullable from db_attribute where class_name = 'boo' order by 1,2;

select * from db_index where class_name = 'boo';

select * from boo;
drop boo;

drop aoo;
