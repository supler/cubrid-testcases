--[er]test translate function using null and other type as its operand
select translate(null) from db_root;
select translate(null,) from db_root;
select translate(null,  , ) from db_root;

select translate(null, 10, 10) from db_root;
select translate(null, 10, 10.11) from db_root;
select translate(null, 10, 'char111') from db_root;
select translate(null, 10, n'nchar111') from db_root;
select translate(null, 10, time'1:1:1 am') from db_root;
select translate(null, 10, date'8/1/2008') from db_root;
select translate(null, 10, timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, 10, {3,4,5}) from db_root;
select translate(null, 10, b'01001000') from db_root;

select translate(null, 10.11, 10) from db_root;
select translate(null, 10.11, 10.11) from db_root;
select translate(null, 10.11, 'char111') from db_root;
select translate(null, 10.11, n'nchar111') from db_root;
select translate(null, 10.11, time'1:1:1 am') from db_root;
select translate(null, 10.11, date'8/1/2008') from db_root;
select translate(null, 10.11, timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, 10.11, {3,4,5}) from db_root;
select translate(null, 10.11, b'01001000') from db_root;

select translate(null, 'char111', 10) from db_root;
select translate(null, 'char111', 10.11) from db_root;
select translate(null, 'char111', 'char111') from db_root;
select translate(null, 'char111', n'nchar111') from db_root;
select translate(null, 'char111', time'1:1:1 am') from db_root;
select translate(null, 'char111', date'8/1/2008') from db_root;
select translate(null, 'char111', timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, 'char111', {3,4,5}) from db_root;
select translate(null, 'char111', b'01001000') from db_root;

select translate(null, n'nchar111', 10) from db_root;
select translate(null, n'nchar111', 10.11) from db_root;
select translate(null, n'nchar111', 'char111') from db_root;
select translate(null, n'nchar111', n'nchar111') from db_root;
select translate(null, n'nchar111', time'1:1:1 am') from db_root;
select translate(null, n'nchar111', date'8/1/2008') from db_root;
select translate(null, n'nchar111', timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, n'nchar111', {3,4,5}) from db_root;
select translate(null, n'nchar111', b'01001000') from db_root;

select translate(null, time'1:1:1 am', 10) from db_root;
select translate(null, time'1:1:1 am', 10.11) from db_root;
select translate(null, time'1:1:1 am', 'char111') from db_root;
select translate(null, time'1:1:1 am', n'nchar111') from db_root;
select translate(null, time'1:1:1 am', time'1:1:1 am') from db_root;
select translate(null, time'1:1:1 am', date'8/1/2008') from db_root;
select translate(null, time'1:1:1 am', timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, time'1:1:1 am', {3,4,5}) from db_root;
select translate(null, time'1:1:1 am', b'01001000') from db_root;

select translate(null, timestamp'1/1/2001 2:2:2 am', 10) from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', 10.11) from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', 'char111') from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', n'nchar111') from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', time'1:1:1 am') from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', date'8/1/2008') from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', {3,4,5}) from db_root;
select translate(null, timestamp'1/1/2001 2:2:2 am', b'01001000') from db_root;

select translate(null, {3,4,5}, 10) from db_root;
select translate(null, {3,4,5}, 10.11) from db_root;
select translate(null, {3,4,5}, 'char111') from db_root;
select translate(null, {3,4,5}, n'nchar111') from db_root;
select translate(null, {3,4,5}, time'1:1:1 am') from db_root;
select translate(null, {3,4,5}, date'8/1/2008') from db_root;
select translate(null, {3,4,5}, timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, {3,4,5}, {3,4,5}) from db_root;
select translate(null, {3,4,5}, b'01001000') from db_root;

select translate(null, b'01001000', 10) from db_root;
select translate(null, b'01001000', 10.11) from db_root;
select translate(null, b'01001000', 'char111') from db_root;
select translate(null, b'01001000', n'nchar111') from db_root;
select translate(null, b'01001000', time'1:1:1 am') from db_root;
select translate(null, b'01001000', date'8/1/2008') from db_root;
select translate(null, b'01001000', timestamp'1/1/2001 2:2:2 am') from db_root;
select translate(null, b'01001000', {3,4,5}) from db_root;
select translate(null, b'01001000', b'01001000') from db_root;
