--NULL + type
SELECT NULL + CAST(1 AS SMALLINT) FROM db_root;
SELECT NULL + 1 FROM db_root;
SELECT NULL + CAST(1 AS BIGINT) FROM db_root;
SELECT NULL + CAST(1 AS NUMERIC(10,5)) FROM db_root;
SELECT NULL + CAST(1 AS FLOAT) FROM db_root;
SELECT NULL + CAST(1 AS DOUBLE) FROM db_root;
SELECT NULL + CAST(1 AS MONETARY) FROM db_root;
SELECT NULL + 'i am a string' FROM db_root;
SELECT NULL + n'i am a string' FROM db_root;
SELECT NULL + time'20:00:01' FROM db_root;
SELECT NULL + date'2010-01-01' FROM db_root;
SELECT NULL + datetime'2010-01-01 12:13:15.167' FROM db_root;
SELECT NULL + timestamp'2010-01-01 12:13:15' FROM db_root;
SELECT NULL + {1,2,3} FROM db_root;
--type + NULL
SELECT CAST(1 AS SMALLINT) + NULL FROM db_root;
SELECT 1 + NULL FROM db_root;
SELECT CAST(1 AS BIGINT) + NULL FROM db_root;
SELECT CAST(1 AS NUMERIC(10,5)) + NULL FROM db_root;
SELECT CAST(1 AS FLOAT) + NULL FROM db_root;
SELECT CAST(1 AS DOUBLE) + NULL FROM db_root;
SELECT CAST(1 AS MONETARY) + NULL FROM db_root;
SELECT 'i am a string' + NULL FROM db_root;
SELECT n'i am a string' + NULL FROM db_root;
SELECT time'20:00:01' + NULL FROM db_root;
SELECT date'2010-01-01' + NULL FROM db_root;
SELECT datetime'2010-01-01 12:13:15.167' + NULL FROM db_root;
SELECT timestamp'2010-01-01 12:13:15' + NULL FROM db_root;
SELECT {1,2,3} + NULL FROM db_root;

--NULL - type
SELECT NULL - CAST(1 AS SMALLINT) FROM db_root;
SELECT NULL - 1 FROM db_root;
SELECT NULL - CAST(1 AS BIGINT) FROM db_root;
SELECT NULL - CAST(1 AS NUMERIC(10,5)) FROM db_root;
SELECT NULL - CAST(1 AS FLOAT) FROM db_root;
SELECT NULL - CAST(1 AS DOUBLE) FROM db_root;
SELECT NULL - CAST(1 AS MONETARY) FROM db_root;
SELECT NULL - 'i am a string' FROM db_root;
SELECT NULL - n'i am a string' FROM db_root;
SELECT NULL - time'20:00:01' FROM db_root;
SELECT NULL - date'2010-01-01' FROM db_root;
SELECT NULL - datetime'2010-01-01 12:13:15.167' FROM db_root;
SELECT NULL - timestamp'2010-01-01 12:13:15' FROM db_root;
SELECT NULL - {1,2,3} FROM db_root;

--type - NULL
SELECT CAST(1 AS SMALLINT) - NULL FROM db_root;
SELECT 1 - NULL FROM db_root;
SELECT CAST(1 AS BIGINT) - NULL FROM db_root;
SELECT CAST(1 AS NUMERIC(10,5)) - NULL FROM db_root;
SELECT CAST(1 AS FLOAT) - NULL FROM db_root;
SELECT CAST(1 AS DOUBLE) - NULL FROM db_root;
SELECT CAST(1 AS MONETARY) - NULL FROM db_root;
SELECT 'i am a string' - NULL FROM db_root;
SELECT n'i am a string' - NULL FROM db_root;
SELECT time'20:00:01' - NULL FROM db_root;
SELECT date'2010-01-01' - NULL FROM db_root;
SELECT datetime'2010-01-01 12:13:15.167' - NULL FROM db_root;
SELECT timestamp'2010-01-01 12:13:15' - NULL FROM db_root;
SELECT {1,2,3} - NULL FROM db_root;
