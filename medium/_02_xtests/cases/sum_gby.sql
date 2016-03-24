autocommit off;
create class sgby (m int, n int);
insert into sgby values (0, 0);
insert into sgby values (1, 1);
insert into sgby values (2, 2);
insert into sgby values (3, 3);
insert into sgby select m+4, n+4 from sgby;
insert into sgby select m+8, n+8 from sgby;
insert into sgby select m, n+16 from sgby;
insert into sgby select m, n+32 from sgby;
insert into sgby select m, n+64 from sgby;
insert into sgby select m, n+128 from sgby;
insert into sgby select m, n+256 from sgby;
select sum(set{n}) from sgby group by m;
select sum(multiset{n}) from sgby group by m;
select sum(sequence{nn}) from (select m,n from sgby order by m,n) as t(mm,nn) group by mm;
rollback;
