-- Table: public.employee

-- DROP TABLE IF EXISTS public.employee;

CREATE TABLE IF NOT EXISTS public.employee
(
    id integer NOT NULL DEFAULT nextval('employee_id_seq'::regclass),
    nume character varying(50) COLLATE pg_catalog."default" NOT NULL,
    prenume character varying(50) COLLATE pg_catalog."default" NOT NULL,
    cnp character varying(13) COLLATE pg_catalog."default" NOT NULL,
    adresa character varying(200) COLLATE pg_catalog."default" NOT NULL,
    sex character(1) COLLATE pg_catalog."default" NOT NULL,
    age integer NOT NULL DEFAULT 0,
    CONSTRAINT employee_pkey PRIMARY KEY (id),
    CONSTRAINT employee_cnp_key UNIQUE (cnp)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employee
    OWNER to postgres;

create view drona_cu_senzori as
select d.*, ds.senzori_id from drona as d
left join drona_senzori as ds
on d.id=ds.drona_id;

select * from drona_cu_senzori;

select model, count(*) senzori from drona_cu_senzori
group by model;

select model, nume from drona_cu_senzori as ds
inner join senzori as s
on ds.senzori_id=s.id;

select distinct model, nume from drona_cu_senzori as ds
left join operator_drona_projects as odp
on ds.id=odp.id
left join projects as p
on odp.projects_id=p.id;

create view operatori_pentru_drone as
select e.nume proiect, e.prenume, e.cnp, e.id, od.drona_id, p.nume from employee as e
left join operator_drona as od
on e.id=od.employee_id
left join operator_drona_projects as odp
on od.id=odp.operator_drona_id
left join projects as p
on odp.projects_id=odp.id;

select * from operatori_pentru_drone;

create table proiecte_cu_drone as
select * from operatori_pentru_drone where proiect is null;
select * from proiecte_cu_drone;

delete from proiecte_cu_drone where id in(select distinct id from operatori_pentru_drone where projects is null);