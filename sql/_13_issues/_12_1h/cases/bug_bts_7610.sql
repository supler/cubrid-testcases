PREPARE s FROM 'select DATE_ADD(?, INTERVAL ? YEAR_MONTH)';
EXECUTE s USING '2010-01-01', 1;
EXECUTE s USING '2010-01-01', '1';
EXECUTE s USING '2010-01-01', '1-1';
EXECUTE s USING SYSDATE, '1';
