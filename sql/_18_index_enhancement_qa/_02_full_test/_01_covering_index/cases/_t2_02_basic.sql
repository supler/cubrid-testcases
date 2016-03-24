--+ holdcas on;
set system parameters 'dont_reuse_heap_file=yes';
create table t1(a char(1200));
create index i_t1_a on t1(a);
insert into t1 values ('123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a > '1';
drop table t1;

create table t1(a varchar(1200));
create index i_t1_a on t1(a);
insert into t1 values ('123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a > '1';
drop table t1;


create table t1(a nchar(1200));
create index i_t1_a on t1(a);
insert into t1 values (N'큐브리드');
--TEST: should use index i_t1_a
--nchar will be removed from R4.9
--select /*+ RECOMPILE */a from t1 where a>= N'큐브리드';
drop table t1;

create table t1(a NCHAR VARYING(1200));
create index i_t1_a on t1(a);
insert into t1 values (N'큐브리드');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */count(a) from t1 where a>=N'큐브리드';
drop table t1;

create table t1(a BIT(1200));
create index i_t1_a on t1(a);
insert into t1 values (B'11111111111111111111111111111111111111111111111111');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>=B'1';
drop table t1;

create table t1(a BIT VARYING(1200));
create index i_t1_a on t1(a);
insert into t1 values (B'0000000000000000000000000000000000000000000000000');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>=B'0';
drop table t1;

create table t1(a int);
create index i_t1_a on t1(a);
insert into t1 values (65535);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>0;
drop table t1;


create table t1(a SMALLINT );
create index i_t1_a on t1(a);
insert into t1 values (254);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>1;
drop table t1;

create table t1(a BIGINT);
create index i_t1_a on t1(a);
insert into t1 values (9223372036854775807);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>0;
drop table t1;

create table t1(a NUMERIC);
create index i_t1_a on t1(a);
insert into t1 values (0);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>-1;
drop table t1;

create table t1(a FLOAT);
create index i_t1_a on t1(a);
insert into t1 values (0);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>-1;
drop table t1;

create table t1(a FLOAT);
create index i_t1_a on t1(a);
insert into t1 values (0);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a>-1;
drop table t1;

create table t1(a DOUBLE);
create index i_t1_a on t1(a);
insert into t1 values (0);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a> -1;
drop table t1;


create table t1(a MONETARY);
create index i_t1_a on t1(a);
insert into t1 values (-100);
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a<0;
drop table t1;

create table t1(a DATE);
create index i_t1_a on t1(a);
insert into t1 values (DATE '2008-10-31');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a > DATE'2008-10-30';
drop table t1;


create table t1(a TIME);
create index i_t1_a on t1(a);
insert into t1 values (TIME '00:00:00');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a = TIME '00:00:00';
drop table t1;

create table t1(a TIMESTAMP );
create index i_t1_a on t1(a);
insert into t1 values (TIMESTAMP '2010-10-31 01:15:45');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a> TIMESTAMP '2010-10-30 01:15:45';
drop table t1;

create table t1(a DATETIME);
create index i_t1_a on t1(a);
insert into t1 values (DATETIME  '2008-10-31 13:15:45');
--TEST: should use index i_t1_a
select /*+ RECOMPILE */a from t1 where a> DATETIME'2008-10-30 13:15:45';
drop table t1;


set system parameters 'dont_reuse_heap_file=no';
commit;
--+ holdcas off;
