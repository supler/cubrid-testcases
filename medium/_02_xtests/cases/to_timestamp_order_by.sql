autocommit off;
create class foo (f varchar(30));
insert into foo values('01:00 02/01/2000');
insert into foo values('01:01 02/02/2000');
insert into foo values('01:02 02/03/2000');
insert into foo values('01:03 02/04/2000');
insert into foo values('01:04 02/05/2000');
select to_timestamp(f) from foo;
select to_timestamp(f) from foo order by 1;
select to_timestamp(f) from foo order by 1 desc;
rollback
rollback;
