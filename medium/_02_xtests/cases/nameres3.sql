autocommit off;
create class foo (a int, b int);
create class foo1 as subclass of foo;
insert into foo values (1, 2);
insert into foo1 values (3, 4);
select * from all foo;
create class foo2 as subclass of foo;
insert into foo2 values (5, 6);
select * from all foo;
select * from foo;
rollback;
