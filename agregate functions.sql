create or replace procedure AddDrones (
	model_p varchar(50), 
	timp_zbor_p time, 
	inaltime_zbor_p integer, 
	sarcina_utila_p integer
)
language plpgsql
as
$$
begin
insert into drona(model, timp_zbor, inaltime_zbor, sarcina_utila) values (model_p, timp_zbor_p, inaltime_zbor_p, sarcina_utila_p);
end
$$;

create or replace procedure updatedronamodel
(
	old_name varchar(50),
	new_name varchar(50)
	
)
language plpgsql
as
$$
begin
update drona
set model=new_name
where model=old_name;
end
$$;

call updatedronamodel('Matrice 30','oti drona');

select * from drona;

create or replace procedure deleprojectfromrange
(
	start_date_p date,
	end_date_p date	
)
language plpgsql
as
$$
begin
delete from projects
where start_date<=start_date_p and end_date>=end_date_p;
end
$$;


call updateprojectdates(5, '2023-01-15','2023-12-15');
select * from projects
where id=5;

create or replace function GetProjectinfoforid(proiect_id_p integer)
returns projects
language sql
as
$$
select * from projects where id=proiect_id_p; 
$$;

select * from GetProjectCount();

CREATE OR REPLACE PROCEDURE AddNewEntryToGenerated(CNP_p VARCHAR(13))
LANGUAGE plpgsql
AS
$$
BEGIN
INSERT INTO generated
SELECT av.*,e.adresa FROM 
(
	select e.nume nume_angajat, e.prenume, e.cnp, p.nume as "nume proiect",p.start_date,p.end_date  from employee e
	inner join operator_drona
	on e.id=operator_drona.employee_id
	inner join operator_drona_projects
	on operator_drona.id=operator_drona_projects.operator_drona_id
	inner join projects p
	on operator_drona_projects.projects_id=p.id
	) AS;
	
	CREATE TABLE generated AS
SELECT av.*,e.adresa FROM 
(
select e.nume nume_angajat, e.prenume, e.cnp, p.nume as "nume proiect",p.start_date,p.end_date  from employee e
inner join operator_drona
on e.id=operator_drona.employee_id
inner join operator_drona_projects
on operator_drona.id=operator_drona_projects.operator_drona_id
inner join projects p
on operator_drona_projects.projects_id=p.id
) AS av
INNER JOIN employee as e
ON av.cnp=e.cnp;