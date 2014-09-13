-- update sequence master.sql
update sequence_master
set sequence_num = (select MAX(pkauditseq)+5 from hla_audit)
where sequence_name = 'SEQ_HLA_AUDIT'

update sequence_master
set sequence_num = (select MAX(pkbox)+5 from hla_box)
where sequence_name = 'SEQ_HLA_BOX'

update sequence_master
set sequence_num = (select MAX(pkcodenumber)+5 from hla_code)
where sequence_name = 'SEQ_HLA_CODE'

update sequence_master
set sequence_num = (select MAX(pkinventory)+5 from hla_inventory)
where sequence_name = 'SEQ_HLA_INVENTORY'

update sequence_master
set sequence_num = (select MAX(pkpackinglist)+5 from hla_packinglist)
where sequence_name = 'SEQ_HLA_PACKINGLIST'

update sequence_master
set sequence_num = (select MAX(pkpanel)+5 from hla_panel)
where sequence_name = 'SEQ_HLA_PANEL'

update sequence_master
set sequence_num = (select MAX(pkreportid)+5 from hla_report_hdr)
where sequence_name = 'SEQ_HLA_PATIENT_REPORT'

update sequence_master
set sequence_num = (select MAX(pkpid)+5 from hla_person)
where sequence_name = 'SEQ_HLA_PERSON'

update sequence_master
set sequence_num = (select MAX(strrefnum)+5 from hla_person where strrefnum<900000)
where sequence_name = 'SEQ_HLA_REFNUM'

-- this sequence is to name a file, not a PK for a table
update sequence_master
set sequence_num = 50
where sequence_name = 'SEQ_HLA_SBT_LOG'

update sequence_master
set sequence_num = (select MAX(pksessionnumber)+5 from hla_session)
where sequence_name = 'SEQ_HLA_SESSION'

update sequence_master
set sequence_num = (select MAX(pksid)+5 from hla_specimen)
where sequence_name = 'SEQ_HLA_SPECIMEN'

update sequence_master
set sequence_num = (select MAX(pkworklistitemseq)+5 from hla_worklist_item)
where sequence_name = 'SEQ_HLA_WORKLIST_ITEM'

update sequence_master
set sequence_num = (select MAX(pkworksheettest)+5 from hla_worksheet_test)
where sequence_name = 'SEQ_WORKSHEET_TEST'

go

