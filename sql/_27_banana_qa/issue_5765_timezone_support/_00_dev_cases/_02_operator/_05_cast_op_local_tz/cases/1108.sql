--test cast function by casting float data type to string,varchar(20),int,numeric,float,double,monetary,nchar(20),nchar varying(20),varchar(10) data type,and casting set{floattest} as set of numeric(38,10),multiset{floattest} as multiset of numeric(38,10),list{floattest} as list of numeric(38)
set timezone '+9:00';

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
timetest        time,
timestamptest           timestampltz,
bittest         bit(16),
nchartest       nchar(20),
ncharvartest    nchar varying(20),
bitvartest              bit varying(20),
stringtest      string);
create class dummy( a int );
insert into func_03 values ( '1234567890', 123, 12345, 9876543210987654321012345678.0123456789, 987654.321, 987654321.987654321,987654.321, 9876.1,'char1234', DATE '08/14/1977', time '02:10:00', timestampltz '08/14/1977 5:35:00 pm',B'0', N'test111', N'test111', B'1','qa test');
insert into func_03 values ( '', 0, 0, 0, 0, 0,0, 0, '', null, null, null,B'', N'', N'', B'','');
insert into func_03(stringtest) values ( null);
insert into dummy values (1);

select floattest from func_03 order by 1;
select cast(floattest as string) from func_03 order by 1;
select cast(floattest as varchar(20)) from func_03 order by 1;
select cast(floattest as int) from func_03 order by 1;
select cast(floattest as numeric(38,10)) from func_03 order by 1;
select cast(floattest as float) from func_03 order by 1;
select cast(floattest as double) from func_03 order by 1;
select cast(floattest as monetary) from func_03 order by 1;
select cast(floattest as nchar(20)) from func_03 order by 1;
select cast(floattest as nchar varying(20)) from func_03 order by 1;
select cast(set{floattest} as set of numeric(38,10)) from func_03 order by 1;
select cast(multiset{floattest} as multiset of numeric(38,10)) from func_03 order by 1;
select cast(list{floattest} as list of numeric(38)) from func_03 order by 1;
select cast(floattest as varchar(10)) from func_03 order by 1;

drop class func_03;
drop class dummy;
set timezone 'default';
