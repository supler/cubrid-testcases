SELECT RIGHT('''''''', 3) from db_root;
SELECT RIGHT('''''''', '3') from db_root;
SELECT RIGHT('I''M Chinese!', FIELD('ej', 'Hej', 'ej', 'Heja', 'hej', 'foo') ) from db_root;
SELECT RIGHT(reverse('I''M Chinese!'), 3) from db_root;
select field(left('I''M Chinese!',3) , right('I''m Chinese!',3),reverse('I''m Chinese!'),mid('I''M Chinese!',1,3)) from db_root;
SELECT RIGHT(lcase('FOOBARFOOBAR'), 5) from db_root;
SELECT RIGHT(concat(lcase('FOO'),RIGHT(lcase('FOOBARFOOBAR'),3)), 5) from db_root;
select concat_ws(RIGHT('I Love You',CHAR_LENGTH(RIGHT('중국abc이다',6))),8,8) from db_root;
SELECT RIGHT('AA', 1999999999) from db_root;
SELECT RIGHT('AA', 2000000000) from db_root;
SELECT RIGHT('AA', 1999999999+1) from db_root;
select 1 as a from (select RIGHT('중국abc이다',6) from db_root) as t1;
select CHAR_LENGTH(RIGHT('중국abc이다',3)) ;
select CHAR_LENGTH(RIGHT('중국abc이다',6)) ;