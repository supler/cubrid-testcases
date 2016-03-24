--Test superseteq on set 
create class t1(c1 set int, c2 multiset varchar(10));

insert into t1 values({101,102},{'aaa','bbb','c','aa'});
insert into t1 values({101,202},{'ddd','bbb','c','bbb'});
insert into t1 values({101,302},{'ccc','bbb','c','ddd'});
insert into t1 values({401,402},{'eee','bbb','c','eee'});

select * from t1 where c1 superseteq {101, 102};

select * from t1 where c1 superseteq {102, 101};

select * from t1 where c1 superseteq {101}  order by 1,2;

drop class t1;
