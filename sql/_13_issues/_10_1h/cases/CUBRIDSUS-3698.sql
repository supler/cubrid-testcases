CREATE TABLE t1( i1 INTEGER);

INSERT INTO t1 VALUES(1);
INSERT INTO t1 VALUES(2);

SELECT i1,IF ( i1>1, i1, NULL) FROM t1; 
SELECT i1,IF ( i1>1, NULL, i1) FROM t1;
SELECT i1,IF ( i1>1, NULL, NULL) FROM t1;

DROP TABLE t1;
