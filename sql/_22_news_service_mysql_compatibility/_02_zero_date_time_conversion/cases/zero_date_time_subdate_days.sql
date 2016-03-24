--TEST: pass zero date/time values to subdate function


--TEST: pass zero datetime value
select subdate(datetime'0000-00-00 00:00:00', 1);
select subdate('0000-00-00 00:00:00.000', -1);
--TEST: pass zero datetime value, munus interval value
select subdate(datetime'00/00/0000 00:15:00', 15);
select subdate('00/00/0000 9:00:00.0', -9);
select subdate(datetime'00:00:00 00/00/0000', 13);
select subdate('00:00:00 0000-00-00.00', 32);
select subdate('00-00-00 00:00:00.0000', 6);
--TEST: pass irregular formats
select subdate(datetime'0-0-0 0:59:0.999', -0.5);


--TEST: pass zero timestamp value
select subdate(timestamp'0000-00-00 00:00:00', 1);
select subdate(timestamp'00/00/0000 00:00:00', 2);
select subdate(timestamp'00:0:00 00/00/0000', 3);
select subdate(timestamp'00:00:00 0000-00-00', 4);
--TEST: pass string value
select subdate('0000-00-00 00:00:00', -1);
select subdate('00/00/0000 00:00:00', 32);
select subdate('00:00:00 00/00/0000', 33);
select subdate('00:00:00 0000-00-00', 55);
--TEST: pass irregular formats
select subdate(timestamp'0:0:0 000-0-00', 4);
select subdate('0:0:0 12/0/00', 12);


--TEST: pass zero date value
select subdate(date'0000-00-00', 5);
select subdate(date'00/00/0000', 99);
--TEST: pass string value
select subdate('0000-00-00', 34);
select subdate('00/00/0000', -3);
--TEST: pass irregular formats
select subdate(date'0-0-0', 31);
select subdate('00/0/000', 12);
