
--update hla_report_hdr
--    set strreportname = replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(CONVERT(varchar(50), newid()),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''),'-','') + ',PTREPORT'
-- where pkreportid < 50000 ;
   
   --select pkreportid, strreportname
   --  from hla_report_hdr
   -- where pkreportid < 50000 ;
    
    
     
 