: Running Script import_hlaprod.bat

: Importing data from hla.dmp file
imp system/manager@ORCLSID_HLA5 fromuser=hla touser=hla file=c:\OracleRecovery\hla.dmp log=c:\OracleRecovery\import_hlaprod.log

: Add Public synonyms for HLA objects
sqlplus system/manager@ORCLSID_HLA5 @c:\OracleRecovery\create_synonyms.sql

: Complete


