select 1 from db_root where 0=0 && 0=0;
select 1 from db_root where 0=0 && 1=0;
select 1 from db_root where 0=0 && 0=NULL;
select 1 from db_root where 0=0 && 2=0;
select 1 from db_root where 0=0 && 'a'=0;
select 1 from db_root where 1=0 && 0=0;
select 1 from db_root where 1=0 && 1=1;
select 1 from db_root where 1=0 && NULL IS NULL;
select 1 from db_root where 1=0 && 2=1;
select 1 from db_root where 1=0 && 'a'=1;
select 1 from db_root where NULL=0 && 0 IS NULL;
select 1 from db_root where NULL=0 && 1 IS NULL;
select 1 from db_root where NULL=0 && NULL IS NULL;
select 1 from db_root where NULL=0 && 2 IS NULL;
select 1 from db_root where NULL=0 && 'a' IS NULL;
select 1 from db_root where 2=0 && 0=1;
select 1 from db_root where 2=0 && 1=1;
select 1 from db_root where 2=0 && NULL IS NULL;
select 1 from db_root where 2=0 && 2=1;
select 1 from db_root where 2=0 && 'a'=1;
select 1 from db_root where 'a'=0 && 0=1;
select 1 from db_root where 'a'=0 && 1=1;
select 1 from db_root where 'a'=0 && NULL IS NULL;
select 1 from db_root where 'a'=0 && 2=1;
select 1 from db_root where 'a'=0 && 'a'=1;
select 1 from db_root where 'a'=0 && 'a'=1;
select 1 from db_root where 1234567890123456=0 && 1234567890=1;