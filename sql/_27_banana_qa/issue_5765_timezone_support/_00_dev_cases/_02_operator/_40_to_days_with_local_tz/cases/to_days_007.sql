--pass out-of-range data of string type to the parameter


--1. [error] out-of-range argument: timestampltz type
select to_days(timestampltz'23:00:00 13/01');

select to_days(timestampltz'04:14:07 1/19/2038');

select to_days(timestampltz'03:15:07 1/19/2038');

select to_days(timestampltz'03:14:08 1/19/2038');

select to_days(timestampltz'03:14:07 2/19/2038');

select to_days(timestampltz'03:14:07 1/20/2038');

select to_days(timestampltz'03:14:07 1/19/2039');

--??
select to_days(timestampltz'03:14:07 PM 1/19/2038');

select to_days(timestampltz'0:0:0 PM 1969-01-01');

select to_days(timestampltz'11:03:22 PM 1864-01-23');

select to_days(timestampltz'2300-12-12 22:02:33');

select to_days(timestampltz'2020-23-11 03:14:66 pm');

select to_days(timestampltz'1970-10-101 0:0');

select to_days(timestampltz'1999/12/11 3:14:7 am');

select to_days(timestampltz'2010-4-31 3:14:7 am');



--2. [error] out-of-range argument: datetimeltz type
select to_days(datetimeltz'2010-10 10:10:100.00 am');

select to_days(datetimeltz'24:59:59.999 12/31/9999');

select to_days(datetimeltz'23:60:59.999 12/31/9999');

select to_days(datetimeltz'23:59:60.999 12/31/9999');

select to_days(datetimeltz'23:59:59.1000 12/31/9999');

select to_days(datetimeltz'23:59:59.999 13/31/9999');

select to_days(datetimeltz'23:59:59.999 12/32/9999');

select to_days(datetimeltz'23:59:59.999 12/31/10000');

select to_days(datetimeltz'20:33:61.111 1990-10-19 ');

select to_days(datetimeltz'2/31/2022 10:20:30.400');

select to_days(datetimeltz'12/31/9999 23:59:59.999');

select to_days(datetimeltz'0-12-12 23:59:59.999');
