SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
create function vizita(DID integer)
returns integer
begin
	DECLARE nriVizitave integer;
    SELECT COUNT(*) INTO nriVizitave
    FROM vizitat
    WHERE vizitat.DID = DID;
    RETURN nriVizitave;
END $$
DELIMITER $$
drop function vizita;
select vizita(103);
