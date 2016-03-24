autocommit off;
create class aa (x1 int);
create class bb (y1 int);
insert into aa(x1) values(1) into :a1;
insert into aa(x1) values(2) into :a2;
insert into aa(x1) values(3) into :a3;
insert into bb(y1) values (-1) into :b1;
insert into bb(y1) values (-2) into :b2;
create class y (a1 set(aa));
create class z (b1 set(bb));
insert into y(a1) values ({:a1, :a2, :a3});
insert into y(a1) values ({:a1, :a2, :a3});
insert into z(b1) values ({:b1, :b2});
insert into z(b1) values ({:b1, :b2});
select count(*) from y, table(a1) as t(w);
select count(*) from z, table(b1) as t1(v);
select count(*) from y, table(a1) as t(w), z, table(b1) as t1(v);
rollback;
