/*Create an Table's each one of them */
/*3.E-sport Tournaments : Fields =>>>>> Tour_Id,Tour_Name,Game_Title,Price,Winning_team,Year*/
CREATE TABLE esports_tournaments (
    Tournament_Id INT PRIMARY KEY AUTO_INCREMENT,
    Tournament_Name VARCHAR(50),
    Game_Title VARCHAR(30),
    Prize_Pool DECIMAL(10, 2),
    Winning_Team VARCHAR(50),
    Year INT
);
desc esports_tournaments;
INSERT INTO esports_tournaments (Tournament_Name, Game_Title, Prize_Pool, Winning_Team, Year) 
VALUES 
('The International', 'Dota 2', 40000000.00, 'Team Spirit', 2021),
('Fortnite World Cup', 'Fortnite', 30000000.00, 'Bugha', 2019),
('League of Legends Worlds', 'League of Legends', 2500000.00, 'EDward Gaming', 2021),
('Call of Duty League Championship', 'Call of Duty', 5000000.00, 'Atlanta FaZe', 2021),
('PUBG Global Championship', 'PUBG', 2000000.00, 'Soniqs', 2022);

select * from esports_tournaments;

/* Return Game Title which start from P and ends with G  */
select * from esports_tournaments where Game_Title like 'P%G';

/* Return Winning_team whose Prize Pool be 25 to 30 lakh */
select * from  esports_tournaments where Prize_Pool between 2000000.00 and 30000000.00;



/*1.  Retrieve all distinct tournaments:*/
 select distinct Tournament_Name from esports_tournaments;
 
 /*2.Find the tournament(s) with the highest prize pool: */
 select * from esports_tournaments;
 select max(Prize_Pool) from esports_tournaments;
 
 -- select  Prize_Pool from esports_tournaments order by Prize_Pool desc limit 1;
 
 /* 3. Get the total number of tournaments: Both Query will be give us same Result */
 select distinct count(Tournament_Id) from esports_tournaments;
 
--  select count(*) as CountTournaments from esports_tournaments;
 
 
 /* 4. Find tournaments held in 2021 */
 select * from esports_tournaments;
 select * from esports_tournaments where Year=2021;
 
 
 /* 5. Calculate the average prize pool of all tournaments */
 select avg(Prize_Pool) from esports_tournaments; -- 15900000.000000 

/* 6. Find tournaments with a prize pool greater than $5,000,000 */
select Tournament_Name,Winning_Team from esports_tournaments where Prize_Pool >=5000000 ;

/* 7.List tournaments and winning teams, ordered by Year (descending) with return top 2 details */
select * from esports_tournaments;
select Tournament_Name,Winning_Team from esports_tournaments order by Year desc limit 2 offset 3;


/* 8.Find the total prize pool for all "Dota 2" tournaments */
select sum(Prize_Pool) from esports_tournaments where Game_Title ='Dota 2';

/*9.Retrieve tournaments where the same team won more than once */
select Winning_Team,count(*) from esports_tournaments

