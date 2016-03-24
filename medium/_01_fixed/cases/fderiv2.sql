autocommit off;
create class foo (a set(int));
create class bar (a set(string));
insert into foo values ({1,2,3,4,5});
insert into bar values ({'ab','cdef','ghi','jklmno'});
select * from table((select a from foo)) as t(g);
select * from table((select a from bar)) as t(g);
select * from table((select a from foo)) as t(g) where g <=4;
select * from table((select a from bar)) as t(g) where g >'d';
rollback work
create class int_set_class
(set_of_num set(int));
insert into int_set_class values( { 5,3,2,4,1});
select t
from   table ((select set_of_num from int_set_class)) as tbl(t);
rollback work;
create class x (a int);
insert into x values (10);
select * from table(set(select x from x)) as t(i);
rollback work;
select * from table({1,2,3}) as t(i);
create class bar2 (foo set of int);
create class bar (zee set of bar2);
insert into bar2 values({}) to z0;
insert into bar2 values({1,2,3,4}) to z1;
insert into bar2 values({5,6}) to z2;
insert into bar2 values({7,8,9}) to z3;
insert into bar values({z0, z1});
insert into bar values({z2});
select z.foo from bar, table(zee) as t(z);
select i from bar, table(zee) as t0(z), table(z.foo) as t1(i);
rollback;
