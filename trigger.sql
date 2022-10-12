$$ delimiter $$
create trigger kontolloKohen before insert on Terminet
for each row
begin
if new.TData<CURRENT_DATE()
then signal sqlstate '45000'
set message_text ='nuk mund te beni termine per kohen e kaluar';
end if;
end
$$ delimiter $$

$$ delimiter $$
create trigger kontolloKohen after update on Terminet
for each row
begin
if new.TData<CURRENT_DATE()
then signal sqlstate '45000'
set message_text ='nuk mund te beni termine per kohen e kaluar';
end if;
end
$$ delimiter $$