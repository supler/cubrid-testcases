-- [er] create vclass using Constraints null,Unique and SHARED

create vclass t1 (
c1 int  SHARED 9 null Unique
);

drop t1;