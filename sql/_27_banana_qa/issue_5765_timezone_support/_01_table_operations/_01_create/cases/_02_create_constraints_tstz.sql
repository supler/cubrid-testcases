--create table with TIMESTAMPTZ columns with constraints


--test: default
drop table if exists tz;
create table tz(c_tstz timestamp with time zone default sys_timestamp);
desc tz;
drop table tz;

--test: shared
create table tz(c_tstz timestamp with time zone shared '2000-12-12 12:00:00 AM +02:00');
desc tz;
drop table tz;

--test: [er] auto_increment
create table tz(c_tstz timestamp with time zone auto_increment);
desc tz;
drop table tz;

--test: not null
create table tz(c_tstz timestamp with time zone not null);
show columns in tz;
drop table tz;

--test: unique
create table tz(c_tstz timestamp with time zone unique);
show columns in tz;
drop table tz;

--test: primary key
create table tz(c_tstz timestamp with time zone primary key);
show columns in tz;
drop table tz;

--test: foreign key
create table a_tz(c_tstz timestamp with time zone primary key);
create table b_tz(c_tstz timestamp with time zone primary key, constraint fk_id foreign key (c_tstz) references a_tz(c_tstz));
desc b_tz;
show index in b_tz;
drop table a_tz, b_tz cascade constraints;

--test: reuse_oid
create table tz(c_tstz timestamp with time zone not null) reuse_oid;
show columns in tz;
drop table tz;


