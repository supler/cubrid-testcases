drop table if exists t13;
create table t13(a2 char(1) default TO_CHAR(SYS_TIME, 'HH24:MI:SS'));
create table t13(a2 char(15) default TO_CHAR(SYS_TIME, 'HH24:MI:SS'));
insert into t13 values default, default, default;
select (default(a2) regexp '^[0-9]{2}:[0-9]{2}:[0-9]{2}') as view_default_val from t13;
drop table t13;
drop table if exists tt;
drop view if exists v1;
drop view if exists v2;
create table tt(c varchar default to_char(systime, 'HH'));
insert into tt values default;
insert into tt values('abccc');
create view v1 as select c, default(c) from tt;
drop tt;
drop table if exists t1;
create class t1(c1 int, c2 set varchar(10));
insert into t1 values (1, {'abc'});
alter t1 add column c3 varchar(100) default to_char(sysdatetime, 'YYYYMMDD');
insert into t1(c1, c2) values(2, {'cba'});
select case when default(c3)=to_char(current_date, 'YYYYMMDD') then 'ok' else 'nok' end from t1;
select default(c1) from t1; 
drop t1
drop  table if exists t1;
create table t1(i int primary key, k varchar(10) default to_char(SYSTIMESTAMP, 'HH24:MI:SS YYYY-MM-DD'));
create table t1(i int primary key, k varchar(100) default to_char(SYSTIMESTAMP, 'HH24:MI:SS YYYY-MM-DD'), h varchar);
insert into t1(i, h) values (1, to_char(SYSTIMESTAMP, 'HH24:MI:SS YYYY-MM-DD')), (2, to_char(SYSTIMESTAMP, 'HH24:MI:SS YYYY-MM-DD'));
select case when k=h then 'ok' else 'nok' end from t1 where i < 5;
create view v2 as select * from t1 where i < 5;
show create view v2;
select case when v2.k=t1.h then 'ok' else 'nok' end from v2, t1;
drop v2;
drop t1;
