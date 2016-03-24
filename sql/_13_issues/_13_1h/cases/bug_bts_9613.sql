create table foo(a int primary key, b int);
insert into foo values (4,5);
insert into foo values (3,4);
insert into foo values (2,3);
insert into foo values (1,2);
create table foo1(a int);
insert into foo1 values (4);
select a,b from foo
start with a in (select a from foo1)
connect by prior a=b;

select a,b from foo                                                             
start with a = (select sum(a) from foo1) connect by prior a=b;

select a,b from foo                                                                                                           
start with a < (select sum(a) from foo1) connect by prior a=b;

select a,b from foo                                                                                                           
start with a > (select sum(a) from foo1) connect by prior a=b;

drop foo;
drop foo1;
