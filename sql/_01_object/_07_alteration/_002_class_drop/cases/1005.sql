--create class,alter this class by adding method with file, alter class by droping the method file 

CREATE CLASS ddl_0001;
ALTER ddl_0001 add col1 string default '*******';
ALTER CLASS ddl_0001 add method method1(int) int function method1 file '$HOME/method' ;
ALTER CLASS ddl_0001 add method method2(varchar(100)) varchar(100) function method2 file '$HOME/method' ;
ALTER CLASS ddl_0001 add method method3(numeric(10)) numeric(10) function method3 file '$HOME/method_an' ;
ALTER CLASS ddl_0001 add method method4(time) timestamp function method4 file '$HOME/meth_time' ;

ALTER CLASS ddl_0001 drop file '$HOME/method';
ALTER CLASS ddl_0001 drop file '$HOME/method_an';




drop class ddl_0001;