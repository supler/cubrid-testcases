--[er]create reverse unique INDEX with same column that are already user by reverse index on which create class and then drop class

create class ddl_0001(col1 int, col2 string, col3 char(10), col4 varchar(10), col5 date );

create reverse index r_idx on ddl_0001(col1);
create reverse unique index ddl_0001_index on ddl_0001(col1);


drop class ddl_0001;


rollback;
rollback;
rollback;
