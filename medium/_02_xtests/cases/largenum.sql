autocommit off;
create class huge_tiny (f float, d double);
insert into huge_tiny values( 12e+4,  12e+4);
insert into huge_tiny values(-12e+4, -12e+4);
insert into huge_tiny values( 12e-4,  12e-4);
insert into huge_tiny values(-12e-4, -12e-4);
select * from huge_tiny;
rollback work;
create class huge_tiny (f float, d double);
insert into huge_tiny values( 1.17E-145F,  2.2250E-1323);
select * from huge_tiny;
rollback work;
rollback;
