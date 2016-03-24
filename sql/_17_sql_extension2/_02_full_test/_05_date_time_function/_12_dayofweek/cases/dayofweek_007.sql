--pass out-of-range data of string type to the parameter



--1. [error] out-of-range argument: date type
select dayofweek(date'13/11/1989');

select dayofweek(date'05/33/1901');

select dayofweek(date'2/20/10000');

select dayofweek(date'0-1-1');

select dayofweek(date'1999-04-31');

select dayofweek(date'03-02-31');



--2. [error] out-of-range argument: timestamp type
select dayofweek(timestamp'23:00:00 13/01');

select dayofweek(timestamp'04:14:07 1/19/2038');

select dayofweek(timestamp'03:15:07 1/19/2038');

select dayofweek(timestamp'03:14:08 1/19/2038');

select dayofweek(timestamp'03:14:07 2/19/2038');

select dayofweek(timestamp'03:14:07 1/20/2038');

select dayofweek(timestamp'03:14:07 1/19/2039');

--??
select dayofweek(timestamp'03:14:07 PM 1/19/2038');

select dayofweek(timestamp'0:0:0 PM 1969-01-01');

select dayofweek(timestamp'11:03:22 PM 1864-01-23');

select dayofweek(timestamp'2300-12-12 22:02:33');

select dayofweek(timestamp'2020-23-11 03:14:66 pm');

select dayofweek(timestamp'1970-10-101 0:0');

select dayofweek(timestamp'1999/12/11 3:14:7 am');

select dayofweek(timestamp'2010-4-31 3:14:7 am');



--3. [error] out-of-range argument: datetime type
select dayofweek(datetime'2010-10 10:10:100.00 am');

select dayofweek(datetime'24:59:59.999 12/31/9999');

select dayofweek(datetime'23:60:59.999 12/31/9999');

select dayofweek(datetime'23:59:60.999 12/31/9999');

select dayofweek(datetime'23:59:59.1000 12/31/9999');

select dayofweek(datetime'23:59:59.999 13/31/9999');

select dayofweek(datetime'23:59:59.999 12/32/9999');

select dayofweek(datetime'23:59:59.999 12/31/10000');

select dayofweek(datetime'20:33:61.111 1990-10-19 ');

select dayofweek(datetime'2/31/2022 10:20:30.400');

select dayofweek(datetime'12/31/9999 23:59:59.999');

select dayofweek(datetime'0-12-12 23:59:59.999');

