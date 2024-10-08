/*Create an Database name flight -info  with and peform CURD operation.*/
show databases;/*Create DB & table FLIGHT_INFO */
create database FLIGHT_INFO;
/*Use this database */
use FLIGHT_INFO;

 /*4*/
 create table Flight(
 flight_id INT primary Key not null,
 Source varchar(50),
 Destination varchar(50),
 duration INT,
 seatClass varchar(20)
 );
 
 /*Insert some Value's inside that table to Performing an CRUD table.*/
 /* If we want to insert all data to field's then we can also directly table name like this.*/
 insert into Flight values(101,'New York','Paris',760,'Business'),
(102,'Shanghai','London',700,'Economy'),
(103,'New York','Paris',650,'Genral'),
(104,'Moscow','Paris',200,'Business'),
(105,'Dubai','London',350,'Business');
/*show Database table*/
select * from Flight;

/*Describe The Table*/
-- 

/*2. Where Clause which id of flight is 3 and Destination is New york*/
select * from Flight where flight_id=103 Or Source='New york';
select * from flight;

/* 3. Comparison Operator's  duration >500 and seat class will be business*/
select * from Flight where duration>500 OR seatClass='Genral';

/*4.  Select all frome the table where origin in */
select * from flight where source='New york' or seatClass='Genral';
select * from flight where destination in('Paris','New york');