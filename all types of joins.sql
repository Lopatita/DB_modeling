select * from clients
inner join projects
on clients.id=projects.clients_id;

select * from clients
left join projects
on clients.id=projects.clients_id;

select * from clients
right join projects
on projects.clients_id=clients.id;

select * from employee
inner join operator_drona
on employee.id=operator_drona.employee_id
inner join operator_drona_projects
on operator_drona.id=operator_drona_projects.operator_drona_id
inner join projects
on operator_drona_projects.projects_id=projects.id;

select * from employee
right join operator_drona
on employee.id=operator_drona.employee_id
right join operator_drona_projects
on operator_drona.id=operator_drona_projects.operator_drona_id
right join projects
on operator_drona_projects.projects_id=projects.id;

select * from employee
right join operator_drona
on employee.id=operator_drona.employee_id
right join operator_drona_projects
on operator_drona.id=operator_drona_projects.operator_drona_id
right join projects
on operator_drona_projects.projects_id=projects.id;

select * from clients
left join projects
on clients.id=projects.clients_id;

select count (*) from clients
right join projects
on projects.clients_id=clients.id;

select * from employee
inner join operator_drona
on employee.id=operator_drona.employee_id
inner join operator_drona_projects
on operator_drona.id=operator_drona_projects.operator_drona_id
inner join projects
on operator_drona_projects.projects_id=projects.id
where employee.sex='f';

