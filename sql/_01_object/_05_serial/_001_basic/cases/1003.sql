--create a SERIAL with conditions START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 10000000000 CYCLE, drop serial at last

CREATE SERIAL ddl_0001_serial
START WITH 1
INCREMENT BY 1
MINVALUE 1
MAXVALUE 10000000000
CYCLE;





DROP SERIAL ddl_0001_serial;