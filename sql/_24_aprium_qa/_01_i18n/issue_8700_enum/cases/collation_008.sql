--addition in late binding using enum type
--+ holdcas on;

set names iso88591;

drop table if exists t1;
create table t1 (e1 enum('Aa','Ba') collate utf8_en_ci);
show full columns from t1;

create table t2 (s varchar(255) collate iso88591_bin);
show full columns from t2;

insert into t2 values ('Aa'), ('aa'), ('Ba'), ('ba');
select * from t2 order by 1;

insert into t1 select s from t2;
select * from t1 order by 1;

truncate table t1;

insert into t1 (e1) values (_utf8'Aa');
insert into t1 (e1) values (_iso88591'Ba');
select * from t1 order by 1;

drop table t1;
drop table t2;

set names iso88591;

commit;
--+ holdcas off;
