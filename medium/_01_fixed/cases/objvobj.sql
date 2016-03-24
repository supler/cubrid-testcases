autocommit off;
create class ev1 (ev1_int int);
create class ev2 (ev2_ref1 ev1);
insert into ev2 values (NULL);
select ev2_ref1 from ev2;
insert into ev1 (ev1_int) values (0) to x;
update ev2 set ev2_ref1=x;
select ev2_ref1, ev2_ref1.ev1_int from ev2;
delete from ev1;
delete from ev2;
create vclass vev1 as select * from ev1;
create vclass vev2(ev2_ref1 vev1) as select * from ev2;
insert into vev2 values (NULL);
select ev2_ref1, ev2_ref1.ev1_int from vev2; 
insert into vev1 (ev1_int) values (0) to x;
update vev2 set ev2_ref1=x;
insert into vev2 values(x)
select ev2_ref1, ev2_ref1.ev1_int from vev2;
rollback;
