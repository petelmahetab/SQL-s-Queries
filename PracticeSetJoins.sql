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