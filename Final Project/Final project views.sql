/* Final Project Views 

--View 1

--Updateable View 

USE RedWingStatistics;
GO
CREATE VIEW CurrentPlayers
AS
SELECT FirstName,LastName,PlayerNumber
FROM Players;

--View 2

CREATE VIEW Performances
AS
SELECT FirstName, LastName, Performance.Season, GamesPlayed, Goals, Assists, Points
FROM Performance
JOIN Players ON Performance.PlayerNumber = Players.PlayerNumber; 

SELECT * FROM Performances;

--View 3

CREATE VIEW OverAge
AS
SELECT FirstName,LastName,BirthDate
FROM Players
WHERE BirthDate < GETDATE() - 12775;

SELECT * FROM Overage;

--View 4

CREATE VIEW LocalPlayers
AS
SELECT FirstName,LastName,Nationality
FROM Players
WHERE Nationality = 'United States';


SELECT * FROM LocalPlayers;

USE RedWingStatistics;
GO
UPDATE Performances
SET Goals = 2
WHERE FirstName = 'Nick' AND LastName = 'Leddy'; */


