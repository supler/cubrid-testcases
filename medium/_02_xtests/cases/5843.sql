autocommit off;
create class conn (num int);
create class fpart (a int, b set(conn));
insert into conn(num) values(1) into obj1;
insert into conn(num) values(1) into obj2;
insert into conn(num) values(1) into obj3;
insert into conn(num) values(1) into obj4;
insert into conn(num) values(1) into obj5;
insert into fpart values(1, {obj1, obj2, obj3, obj4, obj5});
delete from conn;
select * from fpart;
select c.num from fpart, table(b) as t(c);
rollback;
