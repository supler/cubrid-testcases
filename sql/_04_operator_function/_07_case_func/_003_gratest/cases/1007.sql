--test greatest function with int and other type as its operands
select greatest(10, 'aaa') from db_root;
select greatest(10, n'aaa') from db_root;
select greatest(10, date'2/2/2002') from db_root;
select greatest(10, time'3:3:3 am') from db_root;
select greatest(10, timestamp'2/2/2001 2:2:2 am') from db_root;
select greatest(10, b'00101010') from db_root;
select greatest(10, {1,3}) from db_root order by 1;