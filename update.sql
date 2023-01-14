SELECT * FROM drona;
select * from  employee where id in
(
select employee_id from operator_drona where drona_id = 
(
select id from drona where model = 'Phantom 4 RTK'
	)
);




delete from operator_drona where employee_id IN 
(

select employee_id from operator_drona where drona_id = 
(
select id from drona where model = 'Phantom 4 RTK'
	)
	);