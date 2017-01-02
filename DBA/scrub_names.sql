
update hla_person
 set strLastname = 'TEST',
     strFirstname = 'ARC'
;
commit ;

update hla_person
 set strSsn = null ;
commit;

update hla_person
 set strLastName = 'MOUSE',
     strFirstname = 'MICKEY'
 where strRefNum > 358000
;
commit ;

update hla_report_hdr
  set strReportname = 'PATIENT,REPORT'
;
commit ;

update hla_report_item
  set strPersonName = 'FAMILY,RELATION'
;

commit ;
 