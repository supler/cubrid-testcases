create table t1(a varchar(100) charset iso88591 collate iso88591_en_cs, b int);
create table t2(a varchar(100) charset iso88591 collate iso88591_en_ci, b int);
insert into t1 values ('A', 1);
insert into t1 values ('a', 2);
insert into t2 values ('A', 1);
insert into t2 values ('a', 2);

select a from t1 
union 
select a from t2;

select a from t1 
INTERSECTION  
select a from t2;
select a from t1 
EXCEPT  
select a from t2;
select a from t1 
DIFFERENCE 
select a from t2;

drop table t1,t2;