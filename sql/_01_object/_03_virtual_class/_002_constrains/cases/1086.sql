--  create vclass using Constraints  DEFAULT 2147483647

create vclass t1 (
c1 int  DEFAULT 2147483647 
);
select * FROM db_attribute  WHERE class_name='t1';

drop t1;