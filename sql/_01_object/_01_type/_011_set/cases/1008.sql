-- [er]test definition SET type column with 'SHARED UNIQUE' in create statement 

CREATE CLASS ddl_0001(
    col1    SET SHARED NULL UNIQUE
);


drop ddl_0001;

