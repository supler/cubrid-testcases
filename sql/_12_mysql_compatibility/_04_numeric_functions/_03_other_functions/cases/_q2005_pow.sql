--+ holdcas on;
set system parameters 'compat_mode=mysql';
select pow(-1,-1) ;
select pow(-1,0) ;
select pow(-1,1) ;
select pow(0,-1) ;
select pow(0,0) ;
select pow(0,1) ;
select pow(1,-1) ;
select pow(1,0) ;
select pow(1,0) ;
select pow(9223372036854775807,16);
select pow(2,9223372036854775807);
SELECT POW(POW(2,2),POW(2,2));
set system parameters 'compat_mode=cubrid';commit;
--+ holdcas off;
