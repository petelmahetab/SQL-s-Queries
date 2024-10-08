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