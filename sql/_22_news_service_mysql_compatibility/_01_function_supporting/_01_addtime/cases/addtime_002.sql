--pass unmatched types or formats of values to the 2nd parameter


create class coo(
        col1 char(20),
        col2 nchar(20),
        col3 nchar varying(20),
        col4 bit(8),
        col5 bit varying(8),
        col6 numeric,
        col7 integer,
        col8 smallint,
        col9 monetary,
        col10 float,
        col11 double,
        col12 date,
        col13 time,
        col14 timestamp,
        col15 set,
        col16 multiset,
        col17 sequence,
        col18 blob,
        col19 clob,
	col20 datetime,
	col21 varchar
);

insert into coo (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14,col15, col16, col17, col18, col19, col20, col21)
 values('aaa', n'aaa', n'aaa', b'0011', b'0011', 10, 11, 12, 13, 14, 15, '1/1/2008', '1:1:1 pm', '01/31/1994 8:15:00 pm', {10, 20}, {'abc','def'}, {50,60,70}, bit_to_blob(B'000010'), char_to_clob('character'), '2010-10-01 1:10:11', 'aaa');

insert into coo (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14,col15, col16, col17, col18, col19, col20, col21)
 values('bbb', n'bbb', n'bbb', b'1011', b'1010', 20, 21, 22, 23, 24, 25, '5/7/2010', '8:40:22 pm', '05/20/1985 8:15:00 pm', {11, 22}, {'ghj','yut'}, {80,90,100}, bit_to_blob(B'11100010'), char_to_clob('string'), '2022-11-12 12:12:12', 'bbb');

show columns in coo;

--TEST: error, unmatched format
select addtime('13:13:59', col1) from coo order by 1;
--TEST: error, unmatched format
select addtime('13:13:59', col21) from coo order by 1;
--TEST: error, unmatched format
select addtime('13:13:59', col2) from coo order by 1;
--TEST: error, unmatched format
select addtime('13:13:59', col3) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col4) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col5) from coo order by 1;
--TEST: normal, numeric 
select addtime('13:13:59', col6) from coo order by 1;
--TEST: normal, short
select addtime('13:13:59', col7) from coo order by 1;
--TEST: normal, int
select addtime('13:13:59', col8) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col9) from coo order by 1;
--TEST: normal, float
select addtime('13:13:59', col10) from coo order by 1;
--TEST: normal, double
select addtime('13:13:59', col11) from coo order by 1;
--TEST: normal, date
select addtime('13:13:59', col12) from coo order by 1;
--TEST: error, overflow
select addtime('13:13:59', col13) from coo order by 1;
--TEST: error  param 1: normal, timestamp argument;  param 2: unmatched type
select addtime('13:13:59', col14) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col15) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col16) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col17) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col18) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col19) from coo order by 1;
--TEST: error, unmatched type
select addtime('13:13:59', col20) from coo order by 1;


delete from coo;
drop table coo;


