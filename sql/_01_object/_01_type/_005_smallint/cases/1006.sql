-- [er]create table with smallint data type and tests a create syntax with conditions like 'smallint DEFAULT 1234567890 NOT NULL UNIQUE' and then report syntax error like 'Execute: Data overflow coercing 1234567890 to type smallint'

CREATE CLASS ddl_0001(
    col1    smallint DEFAULT 1234567890 NOT NULL UNIQUE 
);





drop ddl_0001;