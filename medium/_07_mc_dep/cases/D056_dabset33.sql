autocommit off;
SET TRANSACTION ISOLATION LEVEL
    REPEATABLE READ CLASS, READ COMMITTED INSTANCES;
DELETE FROM virtual_c2
       WHERE attr4_float_idx IS NULL;
ROLLBACK WORK;
