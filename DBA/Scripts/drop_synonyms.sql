-- drop_synonyms.sql

set heading off
set newpage none
set echo off
set feedback off


Prompt Dropping synonyms...

spool c:\hla\dba\scripts\scratch.sql
Select 'drop public synonym ' || synonym_name || '; '
 from dba_synonyms
 where table_owner = 'HLA' ;
spool off

start c:\hla\dba\scripts\scratch.sql

prompt Drop synonyms complete

quit



