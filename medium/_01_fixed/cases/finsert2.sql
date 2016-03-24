autocommit off;
create class x (xint int);
create class y (yint int, to_x x);
create vclass vx as select * from x;
create vclass vy (i int, to_vx vx) as select * from y;
insert into y values (1, (insert into x values (2) to beach1));
insert into y values (2, beach1);
insert into vx values (10) to vx0;
insert into vy values( 3, (insert into vx values (100) into vx1)) into vy0;
insert into vy values( 4, (insert into vx values (101) into vx2));
insert into vy values( 5, (insert into vx values (102))) into vy1;
select beach1, vx0, vx1, vx2, vy0, vy1 from x where xint = 10;
rollback work;
rollback;
