select mid('ABCDEFG',0,2) FROM DB_ROOT;
select mid('ABCDEFG',1,2) FROM DB_ROOT;
select 1 as a from (select mid('중abc이',0,2) FROM DB_ROOT) as t1;
select mid('ABCDEFG',2,0) FROM DB_ROOT;
select mid('ABCDEFG',2,-1) FROM DB_ROOT;
select mid('ABCDEFG',-2,6) FROM DB_ROOT;
select mid('ABCDEFG',2,21491001) FROM DB_ROOT;
select mid('ABCDEFG',2,2150101001) FROM DB_ROOT;
select mid('ABCDEFG',21491001,21491001) FROM DB_ROOT;
select mid('ABCDEFG',2150101001,21491001) FROM DB_ROOT;
select mid('ABCDEFG',null,2) FROM DB_ROOT;
select mid('ABCDEFG',2,null) FROM DB_ROOT;
select CHAR_LENGTH(mid('ABCDEFG',2,3)) FROM DB_ROOT;
select mid('ABCDEFG',2,LOCATE('bar', 'foobarbar')) FROM DB_ROOT;
select mid(concat_ws('aaa','bbb','ccc','eee'),FIELD(LEFT('foobarbar', 5),'foo','foob','fooba','foobar','foobarb'),2);
