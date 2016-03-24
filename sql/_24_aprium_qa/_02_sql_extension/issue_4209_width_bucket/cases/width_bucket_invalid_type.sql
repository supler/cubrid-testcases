--TEST: pass unmatched types or formats of values to the params


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
        col15 set(int),
        col16 multiset(char(10)),
        col17 sequence(short),
        col18 blob,
        col19 clob,
	col20 datetime,
	col21 varchar
);

insert into coo (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14,col15, col16, col17, col18, col19, col20, col21)
 values('aaa', n'aaa', n'aaa', b'0011', b'0011', 10, 11, 12, 13, 14, 15, '1/1/2008', '1:1:1 pm', '01/31/1994 8:15:00 pm', {10, 20}, {'abc','def'}, {50,60,70}, bit_to_blob(B'000010'), char_to_clob('character'), '2010-10-01 1:10:11', 'aaa');

insert into coo (col1, col2, col3, col4, col5, col6, col7, col8, col9, col10, col11, col12, col13, col14,col15, col16, col17, col18, col19, col20, col21)
 values('bbb', n'bbb', n'bbb', b'1011', b'1010', 20, 21, 22, 23, 24, 25, '5/7/2010', '8:40:22 pm', '05/20/1985 8:15:00 pm', {11, 22}, {'ghj','yut'}, {80,90,100}, bit_to_blob(B'11100010'), char_to_clob('string'), '2022-11-12 12:12:12', 'bbb');


--TEST: error, unmatched format
select width_bucket(col1, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched format
select width_bucket(col21, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched format
select width_bucket(col2, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched format
select width_bucket(col3, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col4, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col5, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type to the min param
select width_bucket(col6, col1, 10, 5) from coo order by 1;
--TEST: error, unmatched type to the min param
select width_bucket(col7, col17, 10, 5) from coo order by 1;
--TEST: numeric, unmatched type to the min param
select width_bucket(col8, col12, 10, 5) from coo order by 1;
--TEST: numeric, unmatched type to the max param
select width_bucket(col9, 5, col5, 5) from coo order by 1;
--TEST: numeric, unmatched type to the max param
select width_bucket(col10, 5, col18, 5) from coo order by 1;
--TEST: numeric, unmatched type to the max param
select width_bucket(col11, 5, '13:13:13', 5) from coo order by 1;
--TEST: date, unmatched type to the min/max param
select width_bucket(col12, col5, 10, 5) from coo order by 1;
--TEST: time, unmatched type to the min/max param
select width_bucket(col13, '12:12:12', 5, 5) from coo order by 1;
--TEST: timestamp, unmatched type to the count param
select width_bucket(col14, 5, 10, 'a') from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col15, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col16, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col17, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col18, 5, 10, 5) from coo order by 1;
--TEST: error, unmatched type
select width_bucket(col19, 5, 10, 5) from coo order by 1;
--TEST: datetime, unmatched type to the min/max/count param
select width_bucket(col20, 5, 10, col19) from coo order by 1;


delete from coo;
drop table coo;


