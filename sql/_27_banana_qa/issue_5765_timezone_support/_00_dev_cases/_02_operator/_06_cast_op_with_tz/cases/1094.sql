--test cast function by casting numeric data type to string,varchar(39),numeric(38,10),float,double,monetary,varchar(10) data type , and casting set{numerictest} as set of numeric(38,10), multiset{numerictest} as multiset of numeric(38,10),list{numerictest} as list of numeric(38), or cast ( 0.123456 as numeric(5,5)), cast ( 0.12345 as numeric(4,4)),cast ( 0.1234 as numeric(3,3))

create class func_03(
varchartest     varchar(20),
sinttest         smallint,
inttest                 int,
numerictest     numeric(38,10),
floattest               float,
realtest                real,
doublepretest   double precision,
moneytest       monetary,
chartest        char(8),
datetest        date,
timetest        datetimetz,
timestamptest           timestamptz,
bittest         bit(16),
nchartest       nchar(20),
ncharvartest    nchar varying(20),
bitvartest              bit varying(20),
stringtest      string);
create class dummy( a int );
insert into func_03 values ( '1234567890', 123, 12345, 9876543210987654321012345678.0123456789, 987654.321, 987654321.987654321,987654.321, 9876.1,'char1234', DATE '08/14/1977', datetimetz '2015-9-17 02:10:00', timestamptz '08/14/1977 5:35:00 pm',B'0', N'test111', N'test111', B'1','qa test');
insert into func_03 values ( '', 0, 0, 0, 0, 0,0, 0, '', null, null, null,B'', N'', N'', B'','');
insert into func_03(stringtest) values ( null);
insert into dummy values (1);

select numerictest from func_03 order by 1;
select cast(numerictest as string) from func_03 order by 1;
select cast(numerictest as varchar(39)) from func_03 order by 1;
select cast(numerictest as numeric(38,10)) from func_03 order by 1;

select cast(numerictest as float) from func_03 order by 1;
select cast(numerictest as double) from func_03 order by 1;
select cast(numerictest as monetary) from func_03 order by 1;
select cast(set{numerictest} as set of numeric(38,10)) from func_03 order by 1;
select cast(multiset{numerictest} as multiset of numeric(38,10)) from func_03 order by 1;
select cast(list{numerictest} as list of numeric(38)) from func_03 order by 1;
select cast ( 0.123456 as numeric(5,5)) from dummy order by 1;
select cast ( 0.12345 as numeric(4,4)) from dummy order by 1;
select cast ( 0.1234 as numeric(3,3)) from dummy order by 1;
select cast(numerictest as varchar(10)) from func_03 order by 1;

drop class func_03;
drop class dummy;
