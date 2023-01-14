select avg(age)::integer as medie from employee;
select count(distinct id)as nr_angajati from employee;
select min(age)as varsta_minima from employee;
select max(age)as varsta_max from employee;
select count (*)as nr_angajati from employee where age<60;
select count(*)as nr_angajati from employee where age>55 and sex='f';
select count(*), age from employee
group by age
having age<60;
select sex, count(*)from employee
where age<60
group by sex
having count (*)>3;