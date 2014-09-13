select * from [HLA].dbo.hla_expected_typing
 where dtrecordcreated > (GETDATE()-1) ;
 
 