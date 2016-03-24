-- [er]create class on all type and insert/update/delete/select data and create Unique index on string string


create class t1(
col1 int, 
col2 string, 
col3 char(10), 
col4 varchar(10), 
col5 FLOAT,
col6 SMALLINT,
col7 DOUBLE,
col8 DATE,
col9 TIME,
col10 TIMESTAMP,
col11 SET,
col12 MULTISET,
col13 SEQUENCE,
col14 bit );

INSERT INTO t1 VALUES (1,'string1','a','aaa',10,10,10, '05/26/2008', '14:24:00', '14:24:00 05/26/2008',{'a'},{'a'},{'a'},B'1');
INSERT INTO t1 VALUES (null,null,'a','aaa',10,10,10, '05/26/2008', '14:24:00', '14:24:00 05/26/2008',{'a'},{'a'},{'a'},B'1');
INSERT INTO t1 VALUES (2,'string2','a','aaa',10,10,10, '05/26/2008', '14:24:00', '14:24:00 05/26/2008',{'a'},{'a'},{'a'},B'1');
INSERT INTO t1 VALUES (1,'string1','a','aaa',10,10,10, '05/26/2008', '14:24:00', '14:24:00 05/26/2008',{'a'},{'a'},{'a'},B'1');
INSERT INTO t1 VALUES (3,'string3','a','aaa',10,10,10, '05/26/2008', '14:24:00', '14:24:00 05/26/2008',{'a'},{'a'},{'a'},B'1');

UPDATE t1 SET col2='string2' WHERE col2='string3';

DELETE  FROM t1 WHERE col2='string2';

SELECT * FROM t1 order by 1;

create Unique index t1_index on t1(col2);

SELECT * FROM db_index WHERE class_name='t1' order by 1,2;

drop class t1;
rollback;
rollback;
