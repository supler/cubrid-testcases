-- [er] create  vclass using Constraints  DEFAULT, not null and SHARED

create vclass t1 (
c1 int  DEFAULT 8 SHARED 9 not null
);

drop t1;