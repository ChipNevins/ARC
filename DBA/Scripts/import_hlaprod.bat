: import_hlaprod.bat
: Running Script import_hlaprod.bat

: Remove HLA DB objects
sqlplus hla/hlapw @c:\hla\dba\scripts\clear_hla_schema.sql

: Remove Public synonyms for HLA objects
sqlplus system/manager @c:\hla\dba\scripts\drop_synonyms.sql

: Importing data from hla.dmp file
imp system/manager fromuser=hla touser=hla file=c:\hla\dba\scripts\hla.dmp log=c:\hla\dba\scripts\import_hlaprod.log

: Add Public synonyms for HLA objects
sqlplus system/manager @c:\hla\dba\scripts\create_synonyms.sql

: Complete


