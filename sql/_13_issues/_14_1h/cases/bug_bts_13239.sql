autocommit off;
create table s1 (a int);
insert into s1 select rownum from db_root connect by level<=400;
create table t1(a int, b int, c int, d int);
insert into t1 (a,b,c,d) select mod(rownum,10), mod(rownum,1000), rownum, rownum from s1 x1, s1 x2 limit 100000;
create index idx_t1_abc on t1(a,b,c);
update statistics on t1 with fullscan;
select /*+ recompile index_ls */ a, min(b) from t1 where a>0 group by a;

drop table s1;
drop table t1;
autocommit on;
