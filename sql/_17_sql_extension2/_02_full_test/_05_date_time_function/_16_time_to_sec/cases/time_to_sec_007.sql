--pass out-of-range data of time/timestamp/datetime type to the parameter



--1. [error] out-of-range argument: time type
select time_to_sec(time'24:00:00');

select time_to_sec(time'25:30:59 pm');

select time_to_sec(time'4:71:45 am');

select time_to_sec(time'13:24:88');

select time_to_sec(time'09:345 pm');

select time_to_sec(time'100:59 am');



--2. [error] out-of-range argument:  timestamp type
select time_to_sec(timestamp'23:00:00 13/01');

select time_to_sec(timestamp'04:14:07 1/19/2038');

select time_to_sec(timestamp'03:15:07 1/19/2038');

select time_to_sec(timestamp'03:14:08 1/19/2038');

select time_to_sec(timestamp'03:14:07 2/19/2038');

select time_to_sec(timestamp'03:14:07 1/20/2038');

select time_to_sec(timestamp'03:14:07 1/19/2039');

--??
select time_to_sec(timestamp'03:14:07 PM 1/19/2038');

select time_to_sec(timestamp'0:0:0 PM 1969-01-01');

select time_to_sec(timestamp'11:03:22 PM 1864-01-23');

select time_to_sec(timestamp'2300-12-12 22:02:33');

select time_to_sec(timestamp'2020-23-11 03:14:66 pm');

select time_to_sec(timestamp'1970-10-101 0:0');

select time_to_sec(timestamp'1999/12/11 3:14:7 am');

select time_to_sec(timestamp'2010-4-31 3:14:7 am');



--3. [error] out-of-range argument: datetime type
select time_to_sec(datetime'2010-10 10:10.100:00 am');

select time_to_sec(datetime'24:59:59.999 12/31/9999');

select time_to_sec(datetime'23:60:59.999 12/31/9999');

select time_to_sec(datetime'23:59:60.999 12/31/9999');

select time_to_sec(datetime'23:59:59.1000 12/31/9999');

select time_to_sec(datetime'23:59:59.999 13/31/9999');

select time_to_sec(datetime'23:59:59.999 12/32/9999');

select time_to_sec(datetime'23:59:59.999 12/31/10000');

select time_to_sec(datetime'20:33:61.111 1990-10-19 ');

select time_to_sec(datetime'2/31/2022 10:20:30.400');

select time_to_sec(datetime'12/31/9999 23:59:59.999');

select time_to_sec(datetime'0-12-12 23:59:59.999');

