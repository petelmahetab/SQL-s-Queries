# Create database name TestQuestion

create database Test_Question;
use  Test_Question;

# Create an table Name World#
create table World(
Name varchar(50) primary key,
Continent varchar(100),
Area int,
Population int,
GDP bigint);
desc World;

#Insert Some Values inside this TABLE
insert into World values('Afghanistan', ' Asia ', 652230,25500100, 20343000000),
 ('Albania', 'Europe' , 28748 , 2831741 , 12960000000 ),
('Algeria' , 'Africa ', 2381741 , 37100000 ,188681000000 ),
( 'Andorra' ,' Europe' , 468 , 78115 , 3712000000 ),
('Angola' , 'Africa' , 1246700 , 20609294 , 100990000000 );

#Show table
select * from World;

/*1.Question. Write a solution to find the name, population, and area 
of the big countries. A country is big if:	It has an area of at least  (i.e., 3000000 km2) or it has a population of at least  (i.e., 25000000).*/
/* Output:
+-------------+------------+---------+
| name | population | area |
+-------------+------------+---------+
| Afghanistan | 25500100 | 652230 |
| Algeria | 37100000 | 2381741 |
+-------------+------------+---------+  
Query is =>  */
select Name,Population,Area from World where Area >=3000000 || Population >=25000000;

/*Question 2.Create Table 'Customer' */
create table Customer(Id int primary key,
Name varchar(50),
ReferenceId int);

/*Insert Some Values */
insert into Customer values(1 , 'Will' , null ),
(2 ,'Jane ', null ),
(3 ,'Alex ', 2 ),
( 4 ,' Bill ', null ),
(5  ,'Zack ',1 ),
( 6 ,' Mark ',2 );

select * from Customer;

/*Question :- Find the names of the customer that are not referred by the customer with id = 2.
Return the result table in any order.
 => Output:
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |

=>
*/
 select Name from Customer where ReferenceId !=2 || ReferenceId is null;


/*Question 3.Create Views */
# Create table
CREATE TABLE infor (
    Artical_id INT,
    Author_id INT,
    ViewErId INT,
    ViewDate DATE
);#Insert some values

INSERT INTO infor VALUES
(1, 3, 5, '2019-08-01'),
(1, 3, 6, '2019-08-02'),
(2, 7, 7, '2019-08-01'),
(2, 7, 6, '2019-08-02'),
(4, 7, 1, '2019-07-22'),
(3, 4, 4, '2019-07-21'),
(3, 4, 4, '2019-07-21');
select * from infor;

/*Create view and Apply Condition*/
CREATE VIEW Viewss AS SELECT * FROM infor;

select Author_id from Viewss 
where Author_id=ViewErId  order by Author_id;
/*   This query is gives all Records with duplicates also  */
select  distinct Author_id from Viewss 
where Author_id=ViewErId  order by Author_id;

/*Done we got it */


/* Create table  'Product' & Insert Values into table */
create table Product(P_Id varchar(50),
Product_name varchar(50),
Manufacture varchar(50),
Price int );

insert into Product values
('P001' ,'Moisturiser' ,'XYZ' ,100),
('P002' ,'Sanitizer' ,'LAC', 50),
('P003' ,'Bath - Soap' ,'COP' ,150),
('P004', 'Shampoo', 'TAP', 200),
('P005', 'Lens Solution', 'COP' ,150);
 
 /*Select Table content*/
 select * from Product;
 
 /* Question 2. Write a query to calculate avg of product price  Having price between 100 and 20.Aggregate */
 select  avg(Price) from Product where Price between 20 and 100;
 
/*Done we get it*/

/*Question 3. Write a query to calculate sum of product price from product table.*/ 
select sum(Price) from Product;

/*Question 4. Write a query to double product price from product ,table where productname = Lens Solution.*/
/* Iska matlab we need to update the row of lense solution--> price double from current.*/
set SQL_SAFE_UPDATES=0;
update Product
set price=price*2
where Product_name='Lens Solution';
SET SQL_SAFE_UPDATES=1;
 
 /* Question 4. Write a query to decrease product price from product  table where productname =  or Bath soap. */
 /* We have to again upadte the Row-Which matches the condition is  decreasing 1.0 */
 update Product
 set price=price-(price * 0.1)
 where Product_name IN ('sanitizer','Bath soap');
 
 
 /*Question 5. Create two table such as ‘Mother’ and ‘Baby’ */

create table Mother (
M_id int primary key,
M_name varchar(50) not null
);
create table Baby (
B_id int primary key,
B_name varchar(50) not null,
M_id int, 
FOREIGN KEY (M_id) references Mother(M_id) 
);

show tables;
 
 /*Insert some Records */
 INSERT INTO Mother
VALUES
(1, 'Kajol'),
(2, 'Madhuri'),
(3, 'Alia');

insert into Baby
values (01, '‘Nysa’', 01),
(02 ,'‘Yug’', 01),
(03,'‘raha’',03),
(04 ,'‘Aryn’',02),
(05,'‘Ryan’',02);

select * from Mother;
select * from Baby;

/*14. Write a Query to create view on table ‘mother’ as  ‘mother_view’ copy all the data from mother table. */

create view Mother_view as select * from Mother;
# Here we done copied all data into Mother table..
select * from Mother_view;

/*15. Write a Query to create a View on Product table as Product_views’ just copy tow column from product table 
such price and product nam*/
show tables;
create view Product_view as select Product_name,Price from Product;
# done 
select * from Product_view;


/*16. Write a Query to fetch record from table ‘Product’ Product name start with ‘s’. */
select* from Product;

select * from Product where Product_name like 's%';
/*Done */

/*17.Write a Query to fetch record from table ‘Product’ Product name ends with ‘r’. */
select * from Product where Product_name like '%r';
/*Done */

/*18.Write a Query to fetch record from table ‘Product’ Product name start ‘s’ and ends with ’o ' */
select * from Product where Product_name  like 's%o';

/*19.Display All record from table Product.  Display all record from table ‘Mother ’ and ‘Baby */
select * from Product;
select * from Mother;
select * from Baby;

/*                      Test Question paper will be Solved.....!                                   */
