/* 1. Create an SaleOrder as database and use it */
CREATE DATABASE SaleOrder;
use SaleOrder;
show databases;
commit;

/*2. Create Table Name :-> a. dbo_Customer, b.dbo_inventory, c. dbo_employee ,d. dbo_Sale */
/* a table */
CREATE TABLE dbo_Customer(
 custID INT unique NOT NULL primary key,
 custFirstName varchar(30) not null,
 custLastName varchar(30) not null,
 custAddress varchar(20) not null,
 custSubVerb varchar(30) not null,
 custCITY varchar(18) not null,
 custPost char(10) not null,
 custPhone char(12) not null
);

/* b table */
create TABLE dbo_inventory(
 inventryID tinyint primary key not null,
 inventryName varchar(30) not null,
 inventryDiscription varchar(100) not null
);

/*  c table */
create TABLE dbo_employee(
EmpId tinyint primary key not null,
EmpFirstName varchar(30) not null,
EmpLastName varchar(35) not null,
EmployeeExtension char(4) null
);

/* d table */
create TABLE dbo_sale(
  SaleId tinyint primary key not null,
  EmpId tinyint not null references employee(EmpId),
  inventryID tinyint not null references inventry(inventryID),
  custID int not null references cust(custID),
  salesDate date not null,
  salesPrice int not null,
  salesUnitPrice int1  not null
);

/* 4 step:- check out using what we were created */
select * from dbo_Customer;
select * from dbo_inventory;
select * from dbo_employee;
select * from dbo_sale;

/* Insert some deafult value */
INSERT into dbo_Customer(custID,custFirstName,custLastName,custAddress,custSubVerb,custCITY,custPost,custPhone)
values(1001,"Mahetab","Patel","World","verb","Pune",413254,9075506040);
INSERT into dbo_Customer(custID,custFirstName,custLastName,custAddress,custSubVerb,custCITY,custPost,custPhone)
values(102,"Sarfraz","Khan","Maharastra","Adverb","Mumbai",7845054,8064051016);
INSERT into dbo_Customer(custID,custFirstName,custLastName,custAddress,custSubVerb,custCITY,custPost,custPhone)
values(103,"minahaj","Tamboli","USA","verb","Washington",413854,9661024642);
INSERT into dbo_Customer(custID,custFirstName,custLastName,custAddress,custSubVerb,custCITY,custPost,custPhone)
values(106,"Zehn","Malik","UK","Adverb","LA",65420,12346792);
/*5 view specific rows/column of each table */
select * from dbo_Customer;

/* Select customer first,last name grouped by decending order */
select custFirstName,custLastName as FullName from dbo_Customer 
order by custLastName desc;

/* Select distinct unique lastname name from the Customer*/
select distinct custLastName from dbo_Customer 
order by custLastName;


/* save CUSTOMER table into another table 'temp' & check it what will shows */
create TABLE  temp as
select distinct custLastName
from dbo_Customer;

/* select * from temp new table */
select * from temp
order by dbo_Customer;
-- order by custLastName;