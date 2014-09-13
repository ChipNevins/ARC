/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [pkimportfilename]
      ,[pkimportdatetime]
      ,[strimporttype]
      ,[strimportstatus]
  FROM [HLA].[dbo].[hla_import_file]
  where pkimportdatetime > '01/01/2013'
  ORDER BY pkimportdatetime desc;
  
  
  
  
  
  