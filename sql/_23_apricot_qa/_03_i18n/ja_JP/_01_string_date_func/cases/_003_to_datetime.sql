--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = ja_JP';
set system parameters 'intl_date_lang = ja_JP';
-- to_datetime
select 'TO_DATETIME( , DAY   )';
SELECT TO_DATETIME('2011-05-01 日曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');
SELECT TO_DATETIME('2011-05-02 月曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');
SELECT TO_DATETIME('2011-05-03 火曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');
SELECT TO_DATETIME('2011-05-04 水曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');
SELECT TO_DATETIME('2011-05-05 木曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');
SELECT TO_DATETIME('2011-05-06 金曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');
SELECT TO_DATETIME('2011-05-07 土曜日 10:11:12.678', 'yyyy-MM-DD DAY HH:MI:SS.FF');

select 'TO_DATETIME( ,  day )';
SELECT TO_DATETIME('2011-05-01 日曜日', 'yyyy-MM-DD day');
SELECT TO_DATETIME('2011-05-02 月曜日', 'yyyy-MM-DD day');
SELECT TO_DATETIME('2011-05-03 火曜日', 'yyyy-MM-DD day');
SELECT TO_DATETIME('2011-05-04 水曜日', 'yyyy-MM-DD day');
SELECT TO_DATETIME('2011-05-05 木曜日', 'yyyy-MM-DD day');
SELECT TO_DATETIME('2011-05-06 金曜日', 'yyyy-MM-DD day');
SELECT TO_DATETIME('2011-05-07 土曜日', 'yyyy-MM-DD day');

select 'TO_DATETIME( , DY )';
SELECT TO_DATETIME('2011-05-01 日', 'yyyy-MM-DD DY');
SELECT TO_DATETIME('2011-05-02 月', 'yyyy-MM-DD DY');
SELECT TO_DATETIME('2011-05-03 火', 'yyyy-MM-DD DY');
SELECT TO_DATETIME('2011-05-04 水', 'yyyy-MM-DD DY');
SELECT TO_DATETIME('2011-05-05 木', 'yyyy-MM-DD DY');
SELECT TO_DATETIME('2011-05-06 金', 'yyyy-MM-DD DY');
SELECT TO_DATETIME('2011-05-07 土', 'yyyy-MM-DD DY');

select 'TO_DATETIME( ,  dy )';
SELECT TO_DATETIME('2011-05-01 日', 'yyyy-MM-DD dy');
SELECT TO_DATETIME('2011-05-02 月', 'yyyy-MM-DD dy');
SELECT TO_DATETIME('2011-05-03 火', 'yyyy-MM-DD dy');
SELECT TO_DATETIME('2011-05-04 水', 'yyyy-MM-DD dy');
SELECT TO_DATETIME('2011-05-05 木', 'yyyy-MM-DD dy');
SELECT TO_DATETIME('2011-05-06 金', 'yyyy-MM-DD dy');
SELECT TO_DATETIME('2011-05-07 土', 'yyyy-MM-DD dy');

-- month
select 'TO_DATETIME( ,  MONTH)';
SELECT TO_DATETIME('2010-01 1月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 2月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 3月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 4月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 5月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 6月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 7月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 8月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 9月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 10月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 11月', 'yyyy-dd MONTH');
SELECT TO_DATETIME('2010-01 12月', 'yyyy-dd MONTH');

select 'TO_DATETIME( ,  month)';
SELECT TO_DATETIME('2010-01 1月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 2月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 3月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 4月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 5月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 6月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 7月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 8月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 9月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 10月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 11月', 'yyyy-dd month');
SELECT TO_DATETIME('2010-01 12月', 'yyyy-dd month');


select 'TO_DATETIME( ,  MON)';
SELECT TO_DATETIME('2010-01 1月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 2月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 3月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 4月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 5月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 6月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 7月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 8月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 9月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 10月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 11月', 'yyyy-dd MON');
SELECT TO_DATETIME('2010-01 12月', 'yyyy-dd MON');

select 'TO_DATETIME( ,  mon)';
SELECT TO_DATETIME('2010-01 1月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 2月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 3月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 4月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 5月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 6月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 7月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 8月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 9月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 10月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 11月', 'yyyy-dd mon');
SELECT TO_DATETIME('2010-01 12月', 'yyyy-dd mon');

select 'TO_DATETIME( ,  Month)';
SELECT TO_DATETIME('2010-01 1月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 2月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 3月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 4月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 5月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 6月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 7月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 8月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 9月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 10月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 11月', 'yyyy-dd Month');
SELECT TO_DATETIME('2010-01 12月', 'yyyy-dd Month');

select 'TO_DATETIME( ,  Mon)';
SELECT TO_DATETIME('2010-01 1月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 2月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 3月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 4月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 5月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 6月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 7月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 8月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 9月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 10月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 11月', 'yyyy-dd Mon');
SELECT TO_DATETIME('2010-01 12月', 'yyyy-dd Mon');

-- text
SELECT TO_DATETIME('2010-01 te月t 11月', 'yyyy-dd "tE月t" Mon');

SELECT TO_DATE('2010-01 tE月t 11月', 'yyyy-dd "te月t" Mon');

select 'TO_DATETIME( ,  PM)';
SELECT TO_DATETIME('2011-05-01 日曜日 10:11:12 午後', 'yyyy-MM-DD DAY HH:MI:SS PM');
SELECT TO_DATETIME('2011-05-01 日曜日 10:11:12 午前', 'yyyy-MM-DD DAY HH:MI:SS AM');
SELECT TO_DATETIME('2011-05-01 日曜日 10:11:12 午後', 'yyyy-MM-DD DAY HH:MI:SS P.M.');
SELECT TO_DATETIME('2011-05-01 日曜日 10:11:12 午前', 'yyyy-MM-DD DAY HH:MI:SS A.M.');
set system parameters 'intl_date_lang = ja_JP';
set system parameters 'intl_number_lang = ja_JP';
set names iso88591;
commit;
--+ holdcas off;


