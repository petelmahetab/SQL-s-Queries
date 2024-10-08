create database Sample2;
/* 1.Create an Sample 2 Database as name */
use Sample2;
/*2 Create an Table Customer with some Column name */
create table Customer(
  cust_id INT  primary key,
  First_name varchar(30) not null,
  Last_name varchar(30) not null,
  AreaCode int default 71000,
  Address varchar(50),
  Country varchar(30) default 'Malaysia'
);
/* describe that table */
desc Customer;
/* 3 Insert Value into Customer Table */
insert into Customer (cust_id, First_name, Last_name, AreaCode, Address, Country) 
values 
(100, 'Fang ying', 'Sham', 418999, 'dbcvvdc', default),
(200, 'Sung ping', 'Vang', default, 'dbcvvdc', 'Thailand'),
(300, 'King john', 'Umn', default, 'dbcvvdc', default);
/* it use for storing saving changes in table and database*/
COMMIT;
SHOW WARNINGS;
/*5. Show the created Data in table */
select * from Customer;

/* 6 .So now we have to add new column inside this Customer table */
/* Add column number PHONENUMBER */
alter table Customer
add Ph_number varchar(20) default 6520130;
commit;

/* 7 Add new Values to newly created Column  using UPDATE query */
update Customer set  Ph_number='546201356' where  cust_id=100;
update Customer set Ph_number='4563462' where cust_id=300;
commit;
select * from Customer;

/* 8 Delete column */
alter table Customer
drop column Ph_number;

/* 9 Delete the record from the country is Thailand*/SET SQL_SAFE_UPDATES = 0;
DELETE FROM Customer
WHERE Country = 'Thailand';

/* drop Cutomer table*/
drop table Customer;

show databases;