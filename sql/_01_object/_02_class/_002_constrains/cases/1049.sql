-- [er] create class using Constraints  DEFAULT,not  null and SHARED

create table t1 (
c1 int Unique  DEFAULT 8 SHARED 9 
);

drop t1;