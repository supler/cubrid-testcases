-- [er]create vclass using Constraints null,Unique and DEFAULT

create vclass t1 (
c1 int  DEFAULT 9 null Unique
);

drop t1;