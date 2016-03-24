---- ALTER TABLE ...  CHANGE COLUMN  
-- constraints : DEFAULT
-- ordering : no order defined
-- name : same of different
-- type : int , not type change 
-- other :


-- loosing 'DEFAULT'
create table t1 ( i1 integer default -1, i2 integer );
insert into t1 values (1,11),(2,22),(3,33);
insert into t1 set i2 = 44;

select * from t1 order by 1,2;
show columns in t1;

alter table t1 change i1 i1 integer;

show columns in t1;


insert into t1 set i2 = 444;
select * from t1 order by 1,2;

drop table t1;



-- gaining 'DEFAULT'
create table t1 ( i1 integer, i2 integer );
insert into t1 values (1,11),(2,22),(3,33);
insert into t1 set i2 = 44;

select * from t1 order by 1,2;
show columns in t1;

alter table t1 change i1 i1 integer default -1;

show columns in t1;


insert into t1 set i2 = 444;
select * from t1 order by 1,2;

drop table t1;




-- changing 'DEFAULT'
create table t1 ( i1 integer default -1 , i2 integer );
insert into t1 values (1,11),(2,22),(3,33);
insert into t1 set i2 = 44;

select * from t1 order by 1,2;
show columns in t1;

alter table t1 change i1 i1 integer default -11;

show columns in t1;


insert into t1 set i2 = 444;
select * from t1 order by 1,2;

drop table t1;



