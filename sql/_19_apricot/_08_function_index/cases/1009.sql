create table t1 (i1 int, i2 int, d1 double, d2 double, s varchar(255));

create index idx on t1 (sin(d1));

insert into t1 values (1,1,1,1,'1');
insert into t1 values (2,2,2,2,'2');
insert into t1 values (3,3,3,3,'3');
insert into t1 values (4,4,4,4,'4');
insert into t1 values (5,5,4,5,'5');
insert into t1 values (6,6,6,6,'6');
insert into t1 values (7,7,7,7,'7');
insert into t1 values (8,8,8,8,'8');
insert into t1 values (9,9,9,9,'9');


select /*+ recompile */ * from t1 where sin(d1) > sin(3);


select /*+ recompile */ * from t1 where sin(d1) = sin(3);


select /*+ recompile */ * from t1 where sin(d1) < sin(4) and sin(d1) > sin(2);


select /*+ recompile */ * from t1 where d1 > 3 order by 1,2,3,4,5;

drop index idx on t1;

create index idx on t1 (sin(d1));


select /*+ recompile */ * from t1 where sin(d1) > sin(3);


select /*+ recompile */ * from t1 where sin(d1) = sin(3);


select /*+ recompile */ * from t1 where sin(d1) < sin(4) and sin(d1) > sin(2);


select /*+ recompile */ * from t1 where d1 > 3 order by 1,2,3,4,5;


drop index idx on t1;

drop table t1;


create table t1 (i1 int, i2 int, d1 double, d2 double, s varchar(255));

create index idx on t1 (i2, sin(d1));

insert into t1 values (1,1,1,1,'1');
insert into t1 values (2,2,2,2,'2');
insert into t1 values (3,3,3,3,'3');
insert into t1 values (4,4,4,4,'4');
insert into t1 values (5,5,4,5,'5');
insert into t1 values (6,6,6,6,'6');
insert into t1 values (7,7,7,7,'7');
insert into t1 values (8,8,8,8,'8');
insert into t1 values (9,9,9,9,'9');


select /*+ recompile */ * from t1 where i2 = 3 and sin(d1) > sin(5);


select /*+ recompile */ * from t1 where i2 = 3 and sin(d1) > sin(5) and sin(d1) < sin(8);


select /*+ recompile */ * from t1 where i2 > 2 and d1 > 3;


select /*+ recompile */ * from t1 where d1 > 3 order by 1,2,3,4,5;

drop index idx on t1;

create index idx on t1 (i2, sin(d1));


select /*+ recompile */ * from t1 where i2 = 3 and sin(d1) > sin(5);


select /*+ recompile */ * from t1 where i2 = 3 and sin(d1) > sin(5) and sin(d1) < sin(8);


select /*+ recompile */ * from t1 where i2 > 2 and d1 > 3;


select /*+ recompile */ * from t1 where d1 > 3 order by 1,2,3,4,5;


drop index idx on t1;

drop table t1;

