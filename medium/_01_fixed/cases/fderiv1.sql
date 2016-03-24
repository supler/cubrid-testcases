autocommit off;
create class x (a int);
insert into x values (10);
insert into x values (5);
select * from x, (select w.a from x w where w.a < x.a) as y(b);
rollback work;
select ssn from (select * from faculty1) f (name, ssn, dept, rank);
select ssn1 from (select ssn from faculty1) f (ssn1);
select ssn, h.n from faculty1 f, (select ssn from faculty g where f = g) h (n);
select * from faculty g where ssn in (
	select sn from faculty1 f, (select ssn from faculty g 
						where f = g) h (sn) );
select * from faculty1 f where ssn+1 in (
	select sn from faculty1 i, (select ssn from faculty g 
						where f = g) h (sn) );
select * from faculty1 f where ssn+1 in (
	select sn from (select ssn from faculty g where f = g) h (sn) );
create class bar1 (a int);
create class bar2 (b int);
insert into bar1(a) values(1);
insert into bar1(a) values(2);
insert into bar2(b) values(2);
select * from bar1, (select * from bar2 where b = a) as t(g);
select * from bar1, (select * from bar2) as t(g) where g=a;
rollback work;
select *
from (select 4*price from inventory_v v
      union
      select price+1 from product_v p)
  as s(prices);
select s.code, s.price
from (select product_code, 4*price from inventory_v v
      difference
      select product_code, 1+price from product_v p)
  as s(code, price);
select *
from   product_v p
where  product_code in
      (select code
       from  (select product_code
              from   inventory_v i
              where  p.product_code=i.product_code)
         as  pc(code));
select p.price, prc
from   product_v p
   ,  (select price
       from   inventory_v i
       where  p.product_code=i.product_code) as baa(prc);
select *
from   product_v p
   ,  (select product_code, price
       from   inventory_v i
       where  p.product_code=i.product_code) as baa(code,price);
rollback;
