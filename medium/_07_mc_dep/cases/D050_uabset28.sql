autocommit off;
SET TRANSACTION ISOLATION LEVEL
    REPEATABLE READ CLASS, READ COMMITTED INSTANCES;
UPDATE base_c1
   SET attr1_int_unique_idx     = - attr1_int_unique_idx,          
       attr1_int_unique_noidx   = - attr1_int_unique_noidx,        
       attr3_smallint_idx       = - attr3_smallint_idx,            
       attr3_smallint_noidx     = - attr3_smallint_noidx,          
       attr4_float_idx          = - attr4_float_idx,               
       attr4_float_noidx        = - attr4_float_noidx,             
       attr5_double_idx         = - attr5_double_idx,              
       attr5_double_noidx       = - attr5_double_noidx,            
       attr6_longstr_idx        = 'UPDATE' + attr6_longstr_idx,  
       attr6_longstr_noidx      = 'UPDATE' + attr6_longstr_noidx,
       attr7_time_idx           = attr7_time_idx    + 12,          
       attr7_time_noidx         = attr7_time_noidx  + 12,          
       attr8_date_idx           = attr8_date_idx    + 12,          
       attr8_date_noidx         = attr8_date_noidx  + 12,          
       attr9_utime_idx          = attr9_utime_idx   + 12,          
       attr9_utime_noidx        = attr9_utime_noidx + 12,          
       attr10_money_idx         = - attr10_money_idx,              
       attr10_money_noidx       = - attr10_money_noidx,            
       attr11_int_2vals_idx     = - attr11_int_2vals_idx,          
       attr11_int_2vals_noidx   = - attr11_int_2vals_noidx,        
       attr12_int_4vals_idx     = - attr12_int_4vals_idx,          
       attr12_int_4vals_noidx   = - attr12_int_4vals_noidx,        
       attr13_int_5vals_idx     = - attr13_int_5vals_idx,          
       attr13_int_5vals_noidx   = - attr13_int_5vals_noidx,        
       attr14_int_10vals_idx    = - attr14_int_10vals_idx,         
       attr14_int_10vals_noidx  = - attr14_int_10vals_noidx,       
       attr15_int_50vals_idx    = - attr15_int_50vals_idx,         
       attr15_int_50vals_noidx  = - attr15_int_50vals_noidx;       
ROLLBACK WORK;
