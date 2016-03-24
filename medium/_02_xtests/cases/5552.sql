autocommit off;
select count(*)
  from resort r1
 where (select name from resort r2 where r1.name = r2.name)
     = (select name from resort r2 where r1.name = r2.name)
select count(*)
  from resort r1, resort r2
 where r1.name < 'ZZZZZ'
   and r1.name = r2.name
create class bigun (
	a0 int,
	a1 int,
	a2 int,
	a3 int,
	a4 int,
	a5 int,
	a6 int,
	a7 int,
	a8 int,
	a9 int,
	a10 int,
	a11 int,
	a12 int,
	a13 int,
	a14 int,
	a15 int,
	a16 int,
	a17 int,
	a18 int,
	a19 int,
	a20 int,
	a21 int,
	a22 int,
	a23 int,
	a24 int,
	a25 int,
	a26 int,
	a27 int,
	a28 int,
	a29 int,
	a30 int,
	a31 int,
	a32 int,
	a33 int,
	a34 int,
	a35 int,
	a36 int,
	a37 int,
	a38 int,
	a39 int,
	a40 int,
	a41 int,
	a42 int,
	a43 int,
	a44 int,
	a45 int,
	a46 int,
	a47 int,
	a48 int,
	a49 int,
	a50 int,
	a51 int,
	a52 int,
	a53 int,
	a54 int,
	a55 int,
	a56 int,
	a57 int,
	a58 int,
	a59 int,
	a60 int,
	a61 int,
	a62 int,
	a63 int,
	a64 int,
	a65 int,
	a66 int,
	a67 int,
	a68 int,
	a69 int,
	a70 int,
	a71 int,
	a72 int,
	a73 int,
	a74 int,
	a75 int,
	a76 int,
	a77 int,
	a78 int,
	a79 int,
	b string
)
	method class set_cost(string, string) function qo_set_cost;
insert into bigun (b) values ('abc');
create index i_bigun_b on bigun(b);
call set_cost('iscan', '0') on class bigun;
--set optimization: level 257;
select * from bigun where b = 'abc';
rollback;
