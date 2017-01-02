-- CREATE_SYNONYMS.sql

set heading off
set newpage none
set echo off
set feedback off


Prompt Creating synonyms...

spool c:\hla\dba\scripts\scratch.sql
Select 'Create public synonym ' || table_name || ' FOR hla.' || table_name || ' ; '
 from dba_tables
 where owner = 'HLA' ;
spool off

start c:\hla\dba\scripts\scratch.sql

Prompt Create synonyms complete

quit


