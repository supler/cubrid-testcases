autocommit off;
create class test_class (a set(integer), b set(float), c set(numeric));
insert into test_class values ({1}, {1.11}, {1111111111111.11});
select a, b, c, a+b+c from test_class;
create class test_class2 (a set(integer), b set(float), c set(numeric(15,2)));
insert into test_class2 values ({1}, {1.11}, {1111111111111.11});
select a, b, c, a+b+c from test_class2;
create class test_class3 (a set(integer), b set(float), c set(numeric(15,3)));
insert into test_class3 values ({1}, {1.11}, {111111111111.111});
select a, b, c, a+b+c from test_class3;
rollback;
