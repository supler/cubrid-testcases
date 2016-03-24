--+ holdcas on;
set system parameters 'dont_reuse_heap_file=yes';
create table t1 (id int, v varchar(20), c char(20), s string);
create index i_t1_all on t1(v,c,s);
create index i_t1_v on t1(v);
create index i_t1_c on t1(c);
create index i_t1_s on t1(s);

insert into t1 values (1, 'dbms qa1 part', 'dbms qa1 part', 'dbms qa1 part');
insert into t1 values (2, 'dbms qa2 part', 'dbms qa2 part', 'dbms qa2 part');
insert into t1 values (3, 'dbms qa2 part', 'dbms qa2 part', 'dbms qb2 part');
insert into t1 values (4, 'aaa', 'aaa', 'aaa');
insert into t1 values (5, 'bbb', 'bbb', 'bbb');
insert into t1 values (6, 'ccc', 'ccc', 'ccc');
insert into t1 values (7, '', '', '');
insert into t1 values (8, ' ', ' ', ' ');
insert into t1 values (9, '  ', '  ', '  ');
insert into t1 values (10, null, null, null);

select /*+ recompile */ * from t1 where v like 'dbms qa%' and v is null;
select /*+ recompile */ * from t1 where c like 'dbms qa%' and c is null;
select /*+ recompile */ * from t1 where s like 'dbms qa%' and s is null;

select /*+ recompile */ * from t1 where v like 'dbms qa%' and v>='dbms qa' and v<'dbms qa2';
select /*+ recompile */ * from t1 where v like 'dbms qa%' and v>='dbms qa1' and v<'dbms qb3';
select /*+ recompile */ * from t1 where c like 'dbms qa%' and c>='dbms qa1' and c<'dbms qa2';
select /*+ recompile */ * from t1 where s like 'dbms qa%' and s>='dbms qa1' and s<'dbms qa2';

select /*+ recompile */ * from t1 where c like 'a%' and s like 'a%' and v like 'a%';
select /*+ recompile */ * from t1 where c like 'a%' and s like 'a%' and v like 'a%' and v >'aaa';
select /*+ recompile */ * from t1 where c like 'a%' and s like 'a%' and v like 'a%' and v <'b';

select /*+ recompile */ * from t1 where s like 'c%' and s < 'c';



drop table t1;
set system parameters 'dont_reuse_heap_file=no';
commit;
--+ holdcas off;
