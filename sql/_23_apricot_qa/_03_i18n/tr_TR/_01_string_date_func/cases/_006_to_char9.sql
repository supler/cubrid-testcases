--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = tr_TR';
set system parameters 'intl_date_lang = tr_TR';
-- TO_CHAR (TIMESTAMP, day)
select 'TO_CHAR(TIMESTAMP, day)';
--test
SELECT TO_CHAR(TIMESTAMP'03:49:19 PM 05/01/2011', 'day' , 'en_US' );


select 'TO_CHAR(TIMESTAMP, dy)';
--test
SELECT TO_CHAR(TIMESTAMP'03:49:19 PM 05/07/2011', 'dy' , 'en_US' );

select 'TO_CHAR(TIMESTAMP, DAY)';
--test
SELECT TO_CHAR(TIMESTAMP'13:49:19  05/02/2011', 'DAY' , 'en_US' );


select 'TO_CHAR(TIMESTAMP, DY)';
--test
SELECT TO_CHAR(TIMESTAMP'13:49:19  05/03/2011', 'DY' , 'en_US' );


select 'TO_CHAR(TIMESTAMP, MONTH)';
--test
SELECT TO_CHAR(TIMESTAMP'2011-01-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-02-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-03-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-04-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-05-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-06-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-07-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-08-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-09-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-10-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-11-01 10:11:12', 'MONTH' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'MONTH' , 'en_US' );

select 'TO_CHAR(TIMESTAMP, month)';
--test
SELECT TO_CHAR(TIMESTAMP'2011-01-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-02-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-03-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-04-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-05-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-06-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-07-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-08-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-09-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-10-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-11-01 10:11:12', 'month' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'month' , 'en_US' );

select 'TO_CHAR(TIMESTAMP, MON)';
--test
SELECT TO_CHAR(TIMESTAMP'2011-01-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-02-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-03-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-04-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-05-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-06-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-07-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-08-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-09-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-10-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-11-01 10:11:12', 'MON' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'MON' , 'en_US' );

select 'TO_CHAR(TIMESTAMP, mon)';
--test
SELECT TO_CHAR(TIMESTAMP'2011-01-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-02-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-03-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-04-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-05-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-06-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-07-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-08-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-09-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-10-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-11-01 10:11:12', 'mon' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'mon' , 'en_US' );

select 'TO_CHAR(TIMESTAMP, AM/PM)';
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'HH:MI:SS AM' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 20:11:12', 'HH:MI:SS PM' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'HH:MI:SS am' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 20:11:12', 'HH:MI:SS pm' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'HH:MI:SS Am' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 20:11:12', 'HH:MI:SS Pm' , 'en_US' );

--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'HH:MI:SS a.m.' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 20:11:12', 'HH:MI:SS p.m.' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'HH:MI:SS A.M.' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 20:11:12', 'HH:MI:SS A.M.' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 10:11:12', 'HH:MI:SS A.m.' , 'en_US' );
--test
SELECT TO_CHAR(TIMESTAMP'2011-12-01 20:11:12', 'HH:MI:SS A.m.' , 'en_US' );
set system parameters 'intl_date_lang = en_US';
set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;
