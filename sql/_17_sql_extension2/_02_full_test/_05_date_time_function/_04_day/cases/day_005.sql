--marginal values of date/timestamp/datetime type


--1. marginal values: date argument
select day(date'0001-01-01');

select day(date'9999-12-31');

select day(date'12/31/9999');

select day(date'1/1/1');




--2. marginal values: timestamp argument
select day(timestamp'00:00:00 01/01');

select day(timestamp'03:14:07 1/19/2038');

select day(timestamp'0:0:0 PM 1970-01-01');

select day(timestamp'1/19/2038 03:14:07 pm');



--3. marginal values: datetime argument
select day(datetime'0:0:0.00 1/1');

select day(datetime'23:59:59.999 12/31/9999');

select day(datetime'00:00:00.0000 AM 0001-01-01');

select day(datetime'12/31/9999 23:59:59.999');



