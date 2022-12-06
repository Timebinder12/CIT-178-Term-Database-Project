/* CREATE DATABASE RedWingStatistics; 
USE RedWingStatistics;
CREATE TABLE Team(
	Season int PRIMARY KEY NOT NULL,
	Wins int,
	Losses int,
	OvertimeShootoutLosses int, 
	Points int,
	GoalsFor int, 
	GoalsAgainst int, 
	PowerPlayGoals int,
	StanleyCup varchar(10),
	Shutouts int
	);

	CREATE TABLE Jobs(
	JobID varchar(50) PRIMARY KEY NOT NULL,
	JobDescription varchar(50) NOT NULL
	);

	CREATE TABLE Management(
	EmployeeID int PRIMARY KEY NOT NULL,
	FirstName varchar(25) NOT NULL,
	LastName varchar(25) NOT NULL,
	JobID varchar(50) FOREIGN KEY REFERENCES Jobs(JobID),
	StartDate datetime NOT NULL,
	EndDate datetime
	);

	CREATE TABLE Players(
	PlayerNumber int PRIMARY KEY NOT NULL,
	FirstName varchar(25) NOT NULL,
	LastName varchar(25) NOT NULL,
	Age int,
	Height char,
	BirthDate datetime,
	JobID varchar(50) FOREIGN KEY REFERENCES Jobs(JobID) NOT NULL,
	ManagementID int FOREIGN KEY REFERENCES Management(EmployeeID) NOT NULL,
	Nationality varchar(50),
	Salary money,
	Season int FOREIGN KEY REFERENCES Team(Season) NOT NULL
	);

	CREATE TABLE Performance(
	PlayerNumber int NOT NULL,
	Season int NOT NULL,
	GamesPlayed int NOT NULL,
	Goals int NOT NULL,
	Assists int NOT NULL,
	Points int NOT NULL,
	Rank int NOT NULL,
	PRIMARY KEY (PlayerNumber, Season)
	);

	ALTER TABLE Performance
	ADD CONSTRAINT FK_PlayerNumber FOREIGN KEY(PlayerNumber) REFERENCES Players(PlayerNumber)
	ON UPDATE CASCADE;

	CREATE TABLE Injured(
	PlayerNumber int NOT NULL,
	Season int NOT NULL,
	Injured varchar(10),
	Comment varchar(50),
	PRIMARY KEY(PlayerNumber, Season)
	); 

	ALTER TABLE Injured
	ADD CONSTRAINT FK_PlayerNum FOREIGN KEY(PlayerNumber) REFERENCES Players(PlayerNumber)
	ON UPDATE CASCADE;

	CREATE INDEX idx_JobID ON Management(JobID);

	CREATE INDEX idx_Season ON Players(Season)
	CREATE INDEX idx_ManagementID ON Players(ManagementID);
	CREATE INDEX idx_JobID1 ON Players(JobID)
	CREATE INDEX idx_PlayerNumber ON Performance(PlayerNumber)
	CREATE INDEX idx_PlayerNumber1 ON Injured(PlayerNumber);*/





	







