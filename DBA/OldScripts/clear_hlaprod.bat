: Running Script clear_hlaprod.bat

: Remove HLA DB objects
sqlplus hla/hla5hla@orclsid_hla5 @c:\OracleRecovery\clear_hla_schema.sql

: Remove Public synonyms for HLA objects
sqlplus system/manager@orclsid_hla5 @c:\OracleRecovery\drop_synonyms.sql

: Complete


