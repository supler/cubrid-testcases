autocommit off;
create class foo(f varchar(20));
insert into foo values('02/01/2000');
insert into foo values('02/02/2000');
insert into foo values('02/03/2000');
insert into foo values('02/04/2000');
insert into foo values('02/05/2000');
select to_date(f) from foo;
select to_date(f) from foo order by 1;
select to_date(f) from foo order by 1 desc;
;rollback
rollback;
