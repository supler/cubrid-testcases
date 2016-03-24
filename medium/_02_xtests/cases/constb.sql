autocommit off;
create class n
(sq sequence of integer,
 nsq sequence of integer,
 i integer);
insert into n (sq, nsq, i) values
 ({3,4,5},
  {null, null, null},
  3);
select sq to sq1 from n;
select nsq to nsq1 from n;
select i from n where sq>=sq1;
select i from n where sq1>=sq1;
select i from n where sequence{3,4,5}>=sequence{3,4,5};
select i from n where sq>={3,4};
select i from n where sq1>={3,4};
select i from n where sequence{3,4,5}>={3,4};
select i from n where sq>={5,6,7};
select i from n where sq1>={5,6,7};
select i from n where sequence{3,4,5}>={5,6,7};
select i from n where sq>=nsq1;
select i from n where sq1>=nsq1;
select i from n where sequence{3,4,5}>=sequence{null,null,null};
select i from n where nsq>=nsq1;
select i from n where nsq1>=nsq1;
select i from n where sequence{null,null,null}>=sequence{null,null,null};
select i from n where sq>sq1;
select i from n where sq1>sq1;
select i from n where sequence{3,4,5}>sequence{3,4,5};
select i from n where sq>{3,4};
select i from n where sq1>{3,4};
select i from n where sequence{3,4,5}>{3,4};
select i from n where sq>{5,6,7};
select i from n where sq1>{5,6,7};
select i from n where sequence{3,4,5}>{5,6,7};
select i from n where sq>nsq1;
select i from n where sq1>nsq1;
select i from n where sequence{3,4,5}>sequence{null,null,null};
select i from n where nsq>nsq1;
select i from n where nsq1>nsq1;
select i from n where sequence{null,null,null}>{null,null,null};
select i from n where sq<=sq1;
select i from n where sq1<=sq1;
select i from n where sequence{3,4,5}<={3,4,5};
select i from n where sq<={3,4,5,6};
select i from n where sq1<={3,4,5,6};
select i from n where sequence{3,4,5}<={3,4,5,6};
select i from n where sq<={5,6,7};
select i from n where sq1<={5,6,7};
select i from n where sequence{3,4,5}<={5,6,7};
select i from n where sq<=nsq1;
select i from n where sq1<=nsq1;
select i from n where sequence{3,4,5}<={null,null,null};
select i from n where nsq<=nsq1;
select i from n where nsq1<=nsq1;
select i from n where sequence{null,null,null}<={null,null,null};
select i from n where sq<sq1;
select i from n where sq1<sq1;
select i from n where sequence{3,4,5}<{3,4,5};
select i from n where sq<{3,4,5,6};
select i from n where sq1<{3,4,5,6};
select i from n where sequence{3,4,5}<{3,4,5,6};
select i from n where sq<{5,6,7};
select i from n where sq1<{5,6,7};
select i from n where sequence{3,4,5}<{5,6,7};
select i from n where sq<nsq1;
select i from n where sq1<nsq1;
select i from n where sequence{3,4,5}<{null,null,null};
select i from n where nsq<nsq1;
select i from n where nsq1<nsq1;
select i from n where sequence{null,null,null}<{null,null,null};
select i from n where sq between sq1 and sq1;
select i from n where sq1 between sq1 and sq1;
select i from n where sequence{3,4,5} between {3,4,5} and {3,4,5};
select i from n where sq between {3,4} and {3,4,5,6};
select i from n where sq1 between {3,4} and {3,4,5,6};
select i from n where sequence{3,4,5} between {3,4} and {3,4,5,6};
select i from n where sq between {3,4} and {5,6,7};
select i from n where sq1 between {3,4} and {5,6,7};
select i from n where sequence{3,4,5} between {3,4} and {5,6,7};
select i from n where sq between nsq1 and sq;
select i from n where sq1 between nsq1 and sq1;
select i from n where sequence{3,4,5} between {null,null,null} and {3,4,5};
select i from n where nsq between nsq1 and nsq1;
select i from n where nsq1 between nsq1 and nsq1;
select i from n where sequence{null,null,null} between {null,null,null} and {null,null,null};
select i from n where sq not between sq1 and sq1;
select i from n where sq1 not between sq1 and sq1;
select i from n where sequence{3,4,5} not between {3,4,5} and {3,4,5};
select i from n where sq not between {3,4} and {3,4,5,6};
select i from n where sq1 not between {3,4} and {3,4,5,6};
select i from n where sequence{3,4,5} not between {3,4} and {3,4,5,6};
select i from n where sq not between {3,4} and {5,6,7};
select i from n where sq1 not between {3,4} and {5,6,7};
select i from n where sequence{3,4,5} not between {3,4} and {5,6,7};
select i from n where sq not between nsq1 and sq;
select i from n where sq1 not between nsq1 and sq1;
select i from n where sequence{3,4,5} not between {null,null,null} and {3,4,5};
select i from n where nsq not between nsq1 and nsq1;
select i from n where nsq1 not between nsq1 and nsq1;
select i from n where sequence{null,null,null} not between {null,null,null} and {null,null,null};
rollback work;
rollback;
