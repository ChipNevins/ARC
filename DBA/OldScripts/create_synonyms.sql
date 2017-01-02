Prompt Creating synonyms...

set heading off
set newpage none
set echo off
set feedback off

spool c:\OracleRecovery\scratch.sql
Select 'Create public synonym ' || table_name || ' FOR hla.' || table_name || ' ; '
 from dba_tables
 where owner = 'HLA' ;
spool off

start c:\OracleRecovery\scratch.sql

Prompt Create synonyms complete

quit


