/* Querit */

/* Listoni të gjithë pacientët që janë nga qyteti i Prishtinës */

select * from Pacienti p inner join pacient_adresa a on p.ssn = a.ssn where qyteti='prishtinë';

select p.ssn,p.emrin,p.mbiemri,a.qyteti from Pacienti p inner join pacient_adresa a on p.ssn = a.ssn 
where qyteti='prishtinë';


/* Cilët pacientë (SSN-të dhe emrat e tyre) kanë paguar fatura në vlerë mbi 150 Euro? */
 
 select p.SSN, p.emrin, p.Mbiemri, f.cmimi, f.cmim_me_tvsh, pa.kesh, pa.Fbanka,f.Data_e_faktures, pa.Data_e_Pageses
 from pacienti p inner join fatura f inner join pagesa pa where f.FID=pa.FID and p.SSN=f.SSN and f.cmim_me_tvsh > 150;


/* Paraqitni të gjitha terminet e vizitave që janë caktuar për nesër për radiologji. */

select * from terminet where Reparti='Radiologji' and tdata='2020-12-24';


/* Listoni ID-të e doktorëve të cilët dje kanë pasur dy ose më shumë vizita ndërsa sot nuk kanë pasur asnjë vizitë.  */

select d.emrin, d.mbiemri, d.did from doktori d where exists
 (select v1.did, count(*) from vizitat v1, terminet t1 where t1.TerminID=v1.TerminID
 and t1.TData='2020-12-22' group by did having count(*) >= 2 and v1.did = d.did) 
 and not exists (select v2.did from vizitat v2, terminet t2 where t2.TerminID=v2.TerminID
 and t2.TData='2020-12-23' and v2.did=d.did group by did);
 

/* Listoni top 5 doktorët me numër maksimal të vizitave në 3 muajt e
fundit. Lista të paraqes të dhënat e doktorit duke përfshirë edhe
emrin e repartit ku punon dhe numrin e vizitave që ka realizuar.
*/

select d.did,d.emrin,d.mbiemri,d.Reparti, count(*) from doktori d inner join vizitat v on v.did=d.did inner join terminet t on t.TerminID=v.TerminID
where t.TData>(date_sub(curdate(),interval 3 month)) group by did order by count(*) desc limit 5;

select d.did,d.emrin,d.mbiemri,d.Reparti, count(*) from doktori d, vizitat v, terminet t 
where v.did=d.did and t.TerminID=v.TerminID
and t.TData>(date_sub(curdate(),interval 3 month)) group by did order by count(*) desc limit 5;


/* Për secilin repart paraqitni (në një listë të vetme):
1 numrin e doktorëve që punojnë në atë repart,
2 pagën mesatare,
3 numrin e vizitave të realizuara në këtë vit
4 shumën e faturuar (vlerën pa TVSH dhe me TVSH) nga vizitat e realizuara në këtë vit
5 shumën e pagesave të realizuara në këtë vit
*/

/* FINAL */
select distinct d.reparti, avg(rr.pagen) as Paga_mesatare, Doktorat.NrDoktoreve, vizitat.NrVizitav,
ShumaCmimi.shuma, ShumaCmimiTVSH.ShumaTVSH, Pagesat.Pagesat
  from doktori d inner join rroga rr on d.titullin=rr.titullin
  inner join( select Reparti, count(*) as NrDoktoreve from doktori d group by Reparti
 ) Doktorat on d.Reparti=Doktorat.Reparti
 inner join( select Reparti, count(*) as NrVizitav from terminet t
 where t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate() group by Reparti
 ) vizitat on d.reparti=vizitat.reparti
  inner join( select Reparti, sum(distinct cmimi) as shuma from fatura f, terminet t
 where f.TerminID=t.TerminID and t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate()
 group by Reparti
 ) ShumaCmimi on d.Reparti=ShumaCmimi.Reparti
   inner join( select Reparti, sum(distinct cmim_me_tvsh) as ShumaTVSH from fatura f, terminet t
 where f.TerminID=t.TerminID and t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate()
 group by Reparti
 ) ShumaCmimiTVSH on d.Reparti=ShumaCmimiTVSH.Reparti
 inner join( select Reparti, sum(distinct cmim_me_tvsh) as Pagesat from pagesa p, fatura f, terminet t
 where p.fid=f.fid and f.TerminID=t.TerminID and t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate()
 group by Reparti
 ) Pagesat on d.reparti=Pagesat.Reparti
 group by d.reparti;

/* FINAL ama ma shkurt */
 select distinct d.reparti, avg(rr.pagen) as Paga_mesatare, count(distinct did) as Numri_i_Doktoreve,
 count(distinct t.terminid) as vizitat, sum(distinct f.cmimi) as shuma, sum(distinct f.cmim_me_tvsh) as shuma_me_tvsh, Pagesat.Pagesat
 from doktori d inner join rroga rr on d.titullin=rr.titullin
 inner join terminet t on d.reparti=t.reparti
 inner join fatura f on f.ssn=t.ssn and f.TerminID=t.TerminID
 inner join( select Reparti, sum(distinct cmim_me_tvsh) as Pagesat from pagesa p, fatura f, terminet t
 where p.fid=f.fid and f.TerminID=t.TerminID and t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate()
 group by Reparti) Pagesat on d.reparti=Pagesat.Reparti
 where t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year))
 group by d.reparti order by count(d.reparti) desc;


/* pagMesatare nr i doktoreve + Numri i vizitav */
select distinct d.reparti, avg(rr.pagen) as Paga_mesatare, count(distinct did) as Numri_i_Doktoreve, count(distinct t.terminid) as vizitat
 from doktori d inner join rroga rr on d.titullin=rr.titullin
 inner join terminet t on d.reparti=t.reparti
 where t.anuluar='false' and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate()
 group by d.reparti order by count(d.reparti) desc;

/* pagMesatare nr i doktoreve*/
select d.reparti, avg(rr.pagen) as Paga_mesatare, count(d.reparti) as Numri_i_Doktoreve
 from doktori d inner join rroga rr
 on d.titullin=rr.titullin
 group by d.reparti order by count(d.reparti);

/* Numri i vizitav */
select t.reparti, count(*) as Numri_i_vizitav from terminet t where anuluar='False'
 and t.tdata>(date_sub(curdate(),interval 1 year)) and t.tdata<=curdate() group by reparti
 order by count(*) desc;
 

 