/* Final Project Procedures 

USE RedWingStatistics;
GO
CREATE PROC spPlayers
AS
SELECT * FROM Players;

EXEC spPlayers;

CREATE PROC spPlayerNationality
@Nationality nvarchar(40)
AS
SET NOCOUNT ON;
SELECT FirstName, LastName, Nationality
FROM Players
WHERE Nationality = @Nationality
GO

EXEC spPlayerNationality 'United States';

CREATE PROC spSeasonScore
@Season int, @Points int OUTPUT
AS
SELECT Season, Points
FROM Team
WHERE Season = @Season
GO

DECLARE @Points int
EXEC spSeasonScore 2018,@Points OUTPUT
PRINT 'Total Number of points earned in selected season';
PRINT @Points;

USE RedWingStatistics;
GO
CREATE PROC spSeasonScoreWithReturn
@Season int
AS
DECLARE @Points int;
SELECT @Points = Points
FROM Team
WHERE @Season = Season;

RETURN @Points;
GO

DECLARE @Points int;
EXEC @Points = spSeasonScoreWithReturn 2018;
PRINT 'Total points for season is: ' + CONVERT(varchar,@Points);

Final Project User Defined Functions

CREATE FUNCTION fnPlayerNumber
	(@PlayerName varchar(50))
	RETURNS int
BEGIN
	RETURN(SELECT PlayerNumber FROM Players WHERE @PlayerName = FirstName);
END;

SELECT GamesPlayed, Goals
FROM Performance
WHERE PlayerNumber = dbo.fnPlayerNumber('Nick');

CREATE FUNCTION fnTopPaidPlayers
	(@CutOff money = 0)
	RETURNS table
	RETURN(SELECT FirstName, LastName, Salary
	FROM Players
	GROUP BY FirstName, LastName, Salary
	HAVING SUM(Salary)>= @Cutoff);

	SELECT * FROM dbo.fnTopPaidPlayers(4000000);

Final Project Triggers

SELECT * INTO PlayersCopy FROM Players WHERE 1=0;


ALTER TABLE PlayersCopy
ADD TransDate Date;
GO
ALTER TABLE PlayersCopy
ADD status varchar(30);



CREATE TRIGGER Players_Archives ON Players
	AFTER DELETE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlayerNumber int
	DECLARE @FirstName varchar(25)
	DECLARE @LastName varchar(25)
	DECLARE @Age int
	DECLARE @Height varchar(20)
	DECLARE @BirthDate datetime
	DECLARE @JobID varchar(50)
	DECLARE @ManagementID int
	DECLARE @Nationality varchar(50)
	DECLARE @Salary money
	DECLARE @Season int
	DECLARE @TransactionDate Date
	DECLARE @status varchar(30)

	SELECT @PlayerNumber = DELETED.PlayerNumber, @FirstName = DELETED.FirstName, @LastName = DELETED.LastName, @Age = DELETED.Age,
	@Height = DELETED.Height, @BirthDate = DELETED.BirthDate, @JobID = DELETED.JobID, @ManagementID = DELETED.ManagementID,
	@Nationality = DELETED.Nationality, @Salary = DELETED.Salary, @Season = DELETED.Season, @TransactionDate = GETDATE(), @status = 'Deleted'
	FROM DELETED

	INSERT INTO PlayersCopy VALUES (@PlayerNumber, @FirstName, @LastName, @Age, @Height, @BirthDate, @JobID, @ManagementID, @Nationality, @Salary, @Season, @TransactionDate, @status)
END

CREATE TRIGGER Players_Archives_Update ON Players
	AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlayerNumber int
	DECLARE @FirstName varchar(25)
	DECLARE @LastName varchar(25)
	DECLARE @Age int
	DECLARE @Height varchar(20)
	DECLARE @BirthDate datetime
	DECLARE @JobID varchar(50)
	DECLARE @ManagementID int
	DECLARE @Nationality varchar(50)
	DECLARE @Salary money
	DECLARE @Season int
	DECLARE @TransactionDate Date
	DECLARE @status varchar(30)

	SELECT @PlayerNumber = INSERTED.PlayerNumber, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName, @Age = INSERTED.Age,
	@Height = INSERTED.Height, @BirthDate = INSERTED.BirthDate, @JobID = INSERTED.JobID, @ManagementID = INSERTED.ManagementID,
	@Nationality = INSERTED.Nationality, @Salary = INSERTED.Salary, @Season = INSERTED.Season, @TransactionDate = GETDATE(), @status = 'Updated'
	FROM INSERTED 

	INSERT INTO PlayersCopy VALUES (@PlayerNumber, @FirstName, @LastName, @Age, @Height, @BirthDate, @JobID, @ManagementID, @Nationality, @Salary, @Season, @TransactionDate, @status)
END


CREATE TRIGGER Players_Archives_INSERT ON Players
	AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @PlayerNumber int
	DECLARE @FirstName varchar(25)
	DECLARE @LastName varchar(25)
	DECLARE @Age int
	DECLARE @Height varchar(20)
	DECLARE @BirthDate datetime
	DECLARE @JobID varchar(50)
	DECLARE @ManagementID int
	DECLARE @Nationality varchar(50)
	DECLARE @Salary money
	DECLARE @Season int
	DECLARE @TransactionDate Date
	DECLARE @status varchar(30)

	SELECT @PlayerNumber = INSERTED.PlayerNumber, @FirstName = INSERTED.FirstName, @LastName = INSERTED.LastName, @Age = INSERTED.Age,
	@Height = INSERTED.Height, @BirthDate = INSERTED.BirthDate, @JobID = INSERTED.JobID, @ManagementID = INSERTED.ManagementID,
	@Nationality = INSERTED.Nationality, @Salary = INSERTED.Salary, @Season = INSERTED.Season, @TransactionDate = GETDATE(), @status = 'Inserted'
	FROM INSERTED 

	INSERT INTO PlayersCopy VALUES (@PlayerNumber, @FirstName, @LastName, @Age, @Height, @BirthDate, @JobID, @ManagementID, @Nationality, @Salary, @Season, @TransactionDate, @status)
END

SELECT * FROM Players;
GO

INSERT INTO Players VALUES(99, 'Shane', 'Reed', 26, '6ft1','1996-04-20', 'D', 1, 'Sweden', 0, 2022);

UPDATE Players
SET Nationality='United States'
WHERE LastName='Reed';

DELETE FROM Players WHERE LastName='Reed' AND FirstName ='Shane';

SELECT * FROM PlayersCopy;

SELECT * FROM Players;
*/
















