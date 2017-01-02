set heading off
set newpage none
set echo off
set feedback off


prompt 'Building DEL tables script'
spool drop_tables_hla.sql
Select 'drop table ' || table_name || '; '
 from user_tables
 order by table_name ;
spool off
prompt 'done'

prompt 'Building DEL views script'
spool drop_views_hla.sql
Select 'drop view ' || view_name || '; '
 from user_views
 order by view_name ;
spool off
prompt 'done'

prompt 'Building DROP sequences script'
spool drop_sequences_hla.sql
Select 'drop sequence ' || sequence_name || '; '
 from user_sequences
 order by sequence_name ;
spool off
prompt 'done'

set echo on
set feedback on

start drop_tables_hla.sql
start drop_views_hla.sql
start drop_sequences_hla.sql

quit


