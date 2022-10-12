/* pacientet qe kane alergjite nga poleni*/
create view Alergjite as
select SSN, Emrin, Mbiemri 
from Pacienti 
where Alergjite = 'Polen';
select* from Alergjite;

/* emrin e pacientet qe ka ba termin ne daten 2020-12-24 ne repartin e Radiologjis*/
create view Terminiii as
select p.SSN, p.Emrin, p.Mbiemri, v.Diagnozen
from Pacienti p, Terminet t, vizitat v
where t.TData='2020-12-24' and t.Reparti='Radiologji' and p.SSN = t.SSN and t.TerminID = v.TerminID;
select* from Terminiii;

/* Mbledhni shumen e parave qe pacientet kan paguar mbrenda 1 jave*/
create view Shuma_javore as 
select sum(f.cmim_me_tvsh)as Pagesa_Javore from fatura f, pagesa p
where f.FID = p.FID and f.SSN=p.SSN and p.Data_e_Pageses>='2020-12-14' and p.Data_e_Pageses<='2020-12-21';
select* from Shuma_javore;
drop view Shuma_javore
