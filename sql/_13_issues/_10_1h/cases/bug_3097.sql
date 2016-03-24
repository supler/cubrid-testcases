--1) DAY_HOUR ('DAYS HOURS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' DAY_HOUR);   
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' DAY_HOUR); 
select DATE_SUB(date'2010-05-14', INTERVAL '1' DAY_HOUR);   
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' DAY_HOUR); 

--2) DAY_MINUTE ('DAYS HOURS:MINUTES')
select DATE_ADD(date'2010-05-14', INTERVAL '1' DAY_MINUTE);     
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' DAY_MINUTE);   
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' DAY_MINUTE);   
select DATE_ADD(date'2010-05-14', INTERVAL '1 1:1' DAY_MINUTE); 
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1' DAY_MINUTE); 
select DATE_SUB(date'2010-05-14', INTERVAL '1' DAY_MINUTE);     
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' DAY_MINUTE);   
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' DAY_MINUTE);   
select DATE_SUB(date'2010-05-14', INTERVAL '1 1:1' DAY_MINUTE); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1' DAY_MINUTE); 

--3) DAY_SECOND ('DAYS HOURS:MINUTES:SECONDS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' DAY_SECOND);      
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' DAY_SECOND);    
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' DAY_SECOND);    
select DATE_ADD(date'2010-05-14', INTERVAL '1:1:1' DAY_SECOND);  
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1' DAY_SECOND);  
select DATE_ADD(date'2010-05-14', INTERVAL '1 1:1:1' DAY_SECOND);
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1 1' DAY_SECOND);
select DATE_SUB(date'2010-05-14', INTERVAL '1' DAY_SECOND);      
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' DAY_SECOND);    
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' DAY_SECOND);    
select DATE_SUB(date'2010-05-14', INTERVAL '1:1:1' DAY_SECOND);  
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1' DAY_SECOND);  
select DATE_SUB(date'2010-05-14', INTERVAL '1 1:1:1' DAY_SECOND);
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1 1' DAY_SECOND);

--4) DAY_MILLISECOND ('DAYS HOURS:MINUTES:SECONDS.MILLISECONDS')	 
select DATE_ADD(date'2010-05-14', INTERVAL '1' DAY_MILLISECOND);        
select DATE_ADD(date'2010-05-14', INTERVAL '1.1' DAY_MILLISECOND);      
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' DAY_MILLISECOND);     
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' DAY_MILLISECOND);     
select DATE_ADD(date'2010-05-14', INTERVAL '1:1.1' DAY_MILLISECOND);    
select DATE_ADD(date'2010-05-14', INTERVAL '1:1:1' DAY_MILLISECOND);    
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1' DAY_MILLISECOND);    
select DATE_ADD(date'2010-05-14', INTERVAL '1:1:1.1' DAY_MILLISECOND);  
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1 1' DAY_MILLISECOND);  
select DATE_ADD(date'2010-05-14', INTERVAL '1 1:1:1.1' DAY_MILLISECOND);
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1 1 1' DAY_MILLISECOND);
select DATE_SUB(date'2010-05-14', INTERVAL '1' DAY_MILLISECOND);        
select DATE_SUB(date'2010-05-14', INTERVAL '1.1' DAY_MILLISECOND);	
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' DAY_MILLISECOND);	
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' DAY_MILLISECOND);	
select DATE_SUB(date'2010-05-14', INTERVAL '1:1.1' DAY_MILLISECOND);  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1:1' DAY_MILLISECOND); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1' DAY_MILLISECOND); 
select DATE_SUB(date'2010-05-14', INTERVAL '1:1:1.1' DAY_MILLISECOND);  
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1 1' DAY_MILLISECOND); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1:1:1.1' DAY_MILLISECOND);  
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1 1 1' DAY_MILLISECOND); 

--5) HOUR_MINUTE ('HOURS:MINUTES')
select DATE_ADD(date'2010-05-14', INTERVAL '1' HOUR_MINUTE );   
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' HOUR_MINUTE );
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' HOUR_MINUTE );
select DATE_SUB(date'2010-05-14', INTERVAL '1' HOUR_MINUTE );  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' HOUR_MINUTE );
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' HOUR_MINUTE );

--6) HOUR_SECOND ('HOURS:MINUTES:SECONDS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' HOUR_SECOND );   
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' HOUR_SECOND );
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' HOUR_SECOND );
select DATE_ADD(date'2010-05-14', INTERVAL '1:1:1' HOUR_SECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1' HOUR_SECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1' HOUR_SECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' HOUR_SECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' HOUR_SECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1:1:1' HOUR_SECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1' HOUR_SECOND ); 

--7) HOUR_MILLISECOND ('HOURS:MINUTES:SECONDS.MILLISECONDS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' HOUR_MILLISECOND );  
select DATE_ADD(date'2010-05-14', INTERVAL '1.1' HOUR_MILLISECOND );   
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' HOUR_MILLISECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' HOUR_MILLISECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1:1.1' HOUR_MILLISECOND );  
select DATE_ADD(date'2010-05-14', INTERVAL '1:1:1' HOUR_MILLISECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1' HOUR_MILLISECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1:1:1.1' HOUR_MILLISECOND );
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1 1' HOUR_MILLISECOND );
select DATE_SUB(date'2010-05-14', INTERVAL '1' HOUR_MILLISECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1.1' HOUR_MILLISECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' HOUR_MILLISECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' HOUR_MILLISECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1:1.1' HOUR_MILLISECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1:1' HOUR_MILLISECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1' HOUR_MILLISECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1:1:1.1' HOUR_MILLISECOND );
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1 1' HOUR_MILLISECOND );

--8) MINUTE_SECOND ('MINUTES:SECONDS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' MINUTE_SECOND);   
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' MINUTE_SECOND);
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' MINUTE_SECOND);
select DATE_SUB(date'2010-05-14', INTERVAL '1' MINUTE_SECOND);  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' MINUTE_SECOND);
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' MINUTE_SECOND);

--9) MINUTE_MILLISECOND ('MINUTES:SECONDS.MILLISECONDS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' MINUTE_MILLISECOND );  
select DATE_ADD(date'2010-05-14', INTERVAL '1.1' MINUTE_MILLISECOND );  
select DATE_ADD(date'2010-05-14', INTERVAL '1:1' MINUTE_MILLISECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' MINUTE_MILLISECOND ); 
select DATE_ADD(date'2010-05-14', INTERVAL '1:1.1' MINUTE_MILLISECOND );
select DATE_ADD(date'2010-05-14', INTERVAL '1 1 1' MINUTE_MILLISECOND );
select DATE_SUB(date'2010-05-14', INTERVAL '1' MINUTE_MILLISECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1.1' MINUTE_MILLISECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1:1' MINUTE_MILLISECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' MINUTE_MILLISECOND ); 
select DATE_SUB(date'2010-05-14', INTERVAL '1:1.1' MINUTE_MILLISECOND );
select DATE_SUB(date'2010-05-14', INTERVAL '1 1 1' MINUTE_MILLISECOND );

--10) SECOND_MILLISECOND ('SECONDS.MILLISECONDS')
select DATE_ADD(date'2010-05-14', INTERVAL '1' SECOND_MILLISECOND );  
select DATE_ADD(date'2010-05-14', INTERVAL '1.1' SECOND_MILLISECOND );
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' SECOND_MILLISECOND );
select DATE_SUB(date'2010-05-14', INTERVAL '1' SECOND_MILLISECOND );  
select DATE_SUB(date'2010-05-14', INTERVAL '1.1' SECOND_MILLISECOND );
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' SECOND_MILLISECOND );

--11) YEAR_MONTH ('YEARS-MONTHS')			       
select DATE_ADD(date'2010-05-14', INTERVAL '1' YEAR_MONTH );  
select DATE_ADD(date'2010-05-14', INTERVAL '1-1' YEAR_MONTH );
select DATE_ADD(date'2010-05-14', INTERVAL '1 1' YEAR_MONTH );
select DATE_SUB(date'2010-05-14', INTERVAL '1' YEAR_MONTH );  
select DATE_SUB(date'2010-05-14', INTERVAL '1-1' YEAR_MONTH );
select DATE_SUB(date'2010-05-14', INTERVAL '1 1' YEAR_MONTH );


