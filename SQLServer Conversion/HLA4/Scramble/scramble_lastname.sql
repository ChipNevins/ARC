
--update hla_person
--    set strlastname = replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(CONVERT(varchar(50), newid()),'0',''),'1',''),'2',''),'3',''),'4',''),'5',''),'6',''),'7',''),'8',''),'9',''),'-','')
-- where pkpid < 100000
--   and strlastname not in('URD','DONOR','PATIENT') 
--     and strfirstname not in ('CORD') ;
   
   select pkpid, strfirstname, strlastname
     from hla_person
    where pkpid between 200500 and 220000 ;
    
     
 