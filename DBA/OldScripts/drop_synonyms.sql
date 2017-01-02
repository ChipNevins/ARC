-- drop_synonyms.sql

set heading off
set newpage none
set echo off
set feedback off


Prompt Dropping synonyms...

spool c:\OracleRecovery\scratch.sql
Select 'drop public synonym ' || synonym_name || '; '
 from dba_synonyms
 where table_owner = 'HLA' ;
spool off

start c:\OracleRecovery\scratch.sql

prompt Drop synonyms complete

quit



