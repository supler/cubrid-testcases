autocommit off;
create table t (a int);
create view v as select * from t where a > 5 with local check option;
insert into v values (2);
rollback;
