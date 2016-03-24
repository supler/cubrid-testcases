create table t1 (s1 string collate utf8_en_ci);
create table t2 (s1 string collate utf8_en_cs);

insert into t1 values ('Ab'), ('aa');

insert into t2 values ('Ab'), ('aa');


select s1 || 'c' from t1 order by 1;
select s1 || 'c' from t2 order by 1;


select cast (s1 as string collate utf8_en_cs) || 'c' from t1 order by 1;
select cast (s1 as string collate utf8_en_ci) || 'c' from t2 order by 1;


-- late binding
prepare s from 'select s1 || ?  from t1 order by 1'
execute s using 'c';


select t1.s1 || t2.s1 from t1,t2 order by 1;

select t1.s1 || cast (t2.s1 as string collate utf8_en_ci) from t1,t2 order by 1;


drop table t1;
drop table t2;
