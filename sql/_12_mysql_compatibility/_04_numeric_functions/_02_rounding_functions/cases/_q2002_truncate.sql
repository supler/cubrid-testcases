SELECT TRUNCATE(11.223,0) FROM db_root;
SELECT TRUNCATE(11.223,-1) FROM db_root;
SELECT TRUNCATE(11.223,12) FROM db_root;
SELECT TRUNCATE(11.223,-5) FROM db_root;
SELECT TRUNCATE(9223372036854775807.222222,2) FROM db_root;
SELECT TRUNCATE(-9223372036854775807.222222,2) FROM db_root;
select STRCMP(format(911,1),to_char(truncate(911,1)));
select STRCMP(format(911,0),to_char(truncate(911,1)));
SELECT TRUNCATE(TRUNCATE(11.223,2),1) FROM db_root;