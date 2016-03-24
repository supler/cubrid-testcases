autocommit off;
get optimization cost 'iscan' into :default_iscan;
create class foo (x int);
create index i_foo_x on foo(x);
insert into foo values (1);
create class dummy
	method class play_dirty(string, string) function qo_set_cost;
call play_dirty('iscan', '0') on class dummy;
--set optimization: cost 'iscan' 0;
--set optimization: level 257;
insert into foo select x + 1 from foo;    
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 2 from foo;    
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 4 from foo;    
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 8 from foo;    
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 16 from foo;   
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 32 from foo;   
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 64 from foo;   
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 128 from foo;  
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 256 from foo;  
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 512 from foo;  
select count(*) from foo where x between 0 and 2049;
insert into foo select x + 1024 from foo; 
select count(*) from foo where x between 0 and 2049;
update foo set x = 40;
select count(*) from foo where x = 40;
insert into foo values(100);
select * from foo where x = 100;
insert into foo values(120);
select * from foo where x > 100;
insert into foo values (20);
select * from foo where x < 40;
call play_dirty('iscan', :default_iscan) on class dummy;
drop foo, dummy;
rollback;
