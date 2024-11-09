show databases;
-- Creating the Billionaire Table
use uniquedatabases;
CREATE TABLE Billionaire (
    BillionaireID INT PRIMARY KEY,
    BillionaireName VARCHAR(50) NOT NULL,
    CompanyID INT
);


-- Creating the Company Table
CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(50) NOT NULL,
    Country VARCHAR(50)
);

/*Inserting the Data Values in it. */
-- Inserting data into the Billionaire Table
INSERT INTO Billionaire (BillionaireID, BillionaireName, CompanyID) VALUES 
(1, 'Elon Musk', 201),
(2, 'Jeff Bezos', 202),
(3, 'Bernard Arnault', 203),
(4, 'Warren Buffett', NULL),
(5, 'Mark Zuckerberg', 204),
(6, 'Mukesh Ambani', NULL);

-- Inserting data into the Company Table
INSERT INTO Company (CompanyID, CompanyName, Country) VALUES
(201, 'Tesla', 'USA'),
(202, 'Amazon', 'USA'),
(203, 'LVMH', 'France'),
(204, 'Meta', 'USA'),
(206, 'Alphabet', 'USA');
 
select * from Billionaire;
select * from Company;


/* Queries */
/*1. Write a query to list all billionaires and the companies they are associated with, only showing matches. (Inner Join) here is COMPANY ID is Foreign Key */
select Billionaire.BillionaireName,Company.CompanyName
from Billionaire 
INNER join Company on Billionaire.CompanyID=Company.CompanyID;


/*2.List all billionaires, including those who are not associated with any company. Show the company name where available.(Left Join from Billionaire table */
select b.BillionaireName,c.CompanyName
from Billionaire b
left join Company c on  b.CompanyID=c.CompanyID;

/*3.Retrieve all companies and list any associated billionaires. Include companies with no billionaire associated.(Right Join )*/
select BillionaireName,CompanyName
from Billionaire
right join Company on Billionaire.CompanyID=Company.CompanyID;

/*4.List all billionaires and companies, showing NULL where there's no association.(FULL OUTER JOIN) */

 /* SELECT b.BillionaireName, c.CompanyName
 FROM Billionaire b
 OUTER JOIN Company c ON b.CompanyID = c.CompanyID; */
/* We get an error outer join beacause we can't able to use an OUTER JOIN directly. Instead we have to use LEFT or RIGHT JOIN .
MYSQL DIDN't support an FULL OUTER JOIN
For solving this question we need to add  LEFT and RIGHT with union*/

SELECT b.BillionaireName, c.CompanyName
 FROM Billionaire b
 left JOIN Company c ON b.CompanyID = c.CompanyID
 UNION
 SELECT b.BillionaireName, c.CompanyName
 FROM Billionaire b
 Right JOIN Company c ON b.CompanyID = c.CompanyID;


