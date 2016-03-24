--SEC_TO_TIME FUNCTION
SELECT SEC_TO_TIME(8888);
SELECT SEC_TO_TIME(60*60);

--TIME_TO_SEC FUNCTION
SELECT TIME_TO_SEC('11:32:24');
SELECT TIME_TO_SEC('1999/04/23 22:10:54');
SELECT TIME_TO_SEC(TIME'2010-10-01 11:33:56');
SELECT TIME_TO_SEC(DATETIME'2010-10-01 22:39:56.1234');
SELECT TIME_TO_SEC(TIMESTAMP'2010-10-01 23:59:59');

--TO_DAYS FUNCTION
SELECT TO_DAYS('2010-10-01');
SELECT TO_DAYS('1/1/1');
SELECT TO_DAYS(DATE'2010-10-01');
SELECT TO_DAYS(DATETIME'1999-05-24 22:39:56.1234');
SELECT TO_DAYS(TIMESTAMP'2010-10-01 23:59:59');

--FROM_DAYS FUNCTION
--2433-09-10
SELECT FROM_DAYS(888888);
SELECT FROM_DAYS(1);
