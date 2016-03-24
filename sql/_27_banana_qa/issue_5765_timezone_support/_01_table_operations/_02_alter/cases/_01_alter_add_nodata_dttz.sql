--add DATETIMETZ columns, using alter ... add statement, no data in the table

set system parameters 'add_column_update_hard_default=yes';

drop table if exists tz;
create table tz(a int);

--test: add column with default
alter table tz add c_dttz1 datetime with time zone default '2003-01-01 2:00:00.789 -8:00';
desc tz;

--test: add column with not null, without default
alter table tz add c_dttz2 datetime with time zone not null;
desc tz;

--test: add column with unique
alter table tz add c_dttz3 datetime with time zone unique;
show columns in tz;

--test: add column with unique and not null
alter table tz add c_dttz4 datetime with time zone unique not null;
show columns in tz;

--test: add column with unique and default
alter table tz add c_dttz5 datetime with time zone default '2003-01-01 2:00:00.789 -8:00' unique;
show columns in tz;

--test: rename column
alter table tz rename column c_dttz5 as renamed;
desc tz;

--test: add column with primary key
alter table tz add c_dttz6 datetime with time zone primary key;
show columns in tz;

--test: drop constraint
alter table tz drop constraint u_tz_c_dttz4;
desc tz;

--test: drop primary key
alter table tz drop primary key;
desc tz;
 
--test: add constraint
alter table tz add constraint pk primary key(c_dttz1);
desc tz;

--test: alter column set default
alter table tz alter column c_dttz1 set default now();
desc tz;

--test: add index
alter table tz add index idx(c_dttz2);
show index in tz;

--test: drop index
alter table tz drop index idx;
show index in tz;


drop table tz;

set system parameters 'add_column_update_hard_default=no';
