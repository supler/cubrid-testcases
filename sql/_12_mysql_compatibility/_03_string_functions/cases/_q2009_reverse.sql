select reverse('') from db_root;
select reverse('I''M Chinese!') from db_root;
select 1 as a from (select reverse('중국abc') from db_root) as t1;
select reverse(true) from db_root;
select reverse('~!@#$%^&*()_+|''\=-,./') from db_root;
select CHAR_LENGTH(reverse(' a b c ')) from db_root;
select reverse( concat('aaa','bbb')) from db_root;
select reverse( CONCAT_WS(1,2,3,4,5,6,7,8,9)) from db_root;
select reverse( CONCAT_WS(1,FIELD('ej', 'Hej', 'ej', 'Heja', 'hej', 'foo'),3,4,5,6,7,8,9)) from db_root;
select reverse( concat( LCASE('QUADRATICALLY'),LCASE('I''M Chinese!') )) from db_root;
select reverse( LEFT('foobarbar', 5)) from db_root;
select locate ( reverse('abc'),reverse('123456abc789')) db_root;
select reverse( lcase(mid('ABCDEFG',1,2))) from db_root;
select reverse( LCASE(reverse('ABC DEF!''S'))) from db_root;
