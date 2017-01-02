set heading off


-- describe dba_synonyms
-- select synonym_name from dba_synonyms where table_owner = 'HLA' order by synonym_name;
-- select * from dba_synonyms where synonym_name like 'MES%';
-- drop synonym messages;
-- start d:\oracle\scripts\create_synonyms.sql
-- start d:\oracle\scripts\drop_synonyms.sql
select table_name from dba_tables where owner = 'HLA' order by table_name ;
