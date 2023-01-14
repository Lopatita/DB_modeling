SELECT nume, prenume, cnp from employee;
select 2;
select 2+2;
select now();
select * from employee;
SELECT nume, prenume, cnp, NOW() from employee;
SELECT nume as "Nume angajat", prenume as "Prenume angajat", cnp as "CNP", NOW() as "Data raport" from employee;
SELECT nume  "Nume angajat", prenume  "Prenume angajat", cnp  "CNP", NOW()  "Data raport" from employee as e;
SELECT nume, prenume, cnp as "CNP", NOW() as "Data raport" from employee as e;
SELECT nume, prenume, cnp as "CNP", NOW() as "Data raport", (id*3)/2 as "Id angajat" from employee as e;
-- filtrare rezultate cu WHERE
SELECT * FROM employee WHERE id=3;
SELECT nume, prenume, cnp from employee WHERE id=3;
SELECT nume, prenume FROM employee 	where id=6;
select * from employee where id in(3,5,6);
select * from employee where id > 3;
select * from employee where id <= 3;
select * from employee where id = 3 and prenume='Popescu';
select * from employee where (nume='Viorel' and id>3 or id=5)and adresa= 'Mun. Arad, Jud. Arad';
select * from employee where nume like ('%r%');
select * from employee where PRENUME like ('P%');
select * from employee where adresa like ('%Ar%');
SELECT nume as "Nume angajat", prenume as "Prenume angajat", cnp as "CNP", NOW() as "Data raport" from employee as e where e.nume='George';
SELECT employee.nume as "Nume angajat", employee.prenume as "Prenume angajat", employee.cnp as "CNP", NOW() as "Data raport" from employee;
create view employee_extented 
as SELECT employee.nume as "Nume angajat", employee.prenume as "Prenume angajat", employee.cnp as "CNP", NOW() as "Data raport" from employee;
select model, timp_zbor from 
(
select *, NOW()as "acum" from drona
)as temp;

