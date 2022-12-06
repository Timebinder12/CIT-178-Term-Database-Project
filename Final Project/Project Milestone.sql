/*
USE RedWingStatistics;

INSERT INTO Team VALUES
(2022,32,40,10,74,227,310,37,'No',4),
(2021,29,44,8,76,256,298,32,'No',3),
(2020,44,26,7,89,270,210,34,'No',5),
(2019,35,29,11,98,263,231,29,'No',9),
(2018,43,21,5,75,253,242,28,'No',3); 


INSERT INTO Jobs VALUES
('HC','Head Coach'),
('AC','Assistant Coach'),
('VC','Video Coach'),
('ASC','Associate Coach'),
('AVC','Assistant Video Coach'),
('GM','General Manager'),
('GC','Goaltending Coach'),
('OWN','Owner'),
('TRS','Treasurer'),
('PR','President'),
('CO','CEO'),
('SVP','Sr. Vice President'),
('EVP','Executive Vice President'),
('AGM','Assistant General Manager'),
('VPHO','Vice President of Hockey Operations'),
('EPD','European Player Development'),
('DSA','Director of Statistical Analysis'),
('HODA','Hockey Operations Data Analyist'),
('ADPP','Associate Director of Player Personnel'),
('ADPD','Assistant Director of Player Development'),
('DHO','Director of Hockey Operations'),
('PDC','Player Development Consultant'),
('VPF','Vice President of Finance'),
('TSM','Team Services Manager'),
('TTC','Team Travel Coordinator'),
('RW','Right Wing'),
('LF','Left Wing'),
('C','Center'),
('G','Goaltender'),
('D','Defense');

INSERT INTO Management VALUES
(1,'Jeff','Blashill','HC','2015-04-12','2022-09-02'),
(2,'Alex','Tanguay','AC','2021-06-30',NULL),
(3,'LJ','ScarPace','VC','2019-08-16',NULL),
(4,'Jeff','Weintraub','AVC','2018-03-20',NULL),
(5,'Steve','Yzerman','GM','2019-04-19',NULL),
(6,'Alex','Wustland','GC','2022-07-08',NULL),
(7,'Micheal','Ilitch','OWN','1982-06-01',NULL),
(8,'Marian','Ilitch','TRS','1982-06-01',NULL),
(9,'Christopher','Ilitch','PR','1982-06-01',NULL),
(10,'Jim','Devellano','SVP','1982-06-20',NULL),
(11,'Shawn','Horcoff','AGM','2016-03-14',NULL),
(12,'Nicklas','Lidstrom','VPHO','2022-01-11',NULL),
(13,'Niklas','Kronwall','EPD','1993-06-28',NULL),
(14,'Bryan','Campbell','DSA','1994-01-08',NULL),
(15,'Dan','Kosinski','HODA','1997-01-12',NULL),
(16,'Jiri','Fischer','ADPP','1999-06-18',NULL),
(17,'Dan','Clearly','ADPD','2000-05-23',NULL),
(18,'Aaron','Kahn','DHO','2000-12-17',NULL),
(19,'Dwayne','Blais','PDC','2012-09-25',NULL),
(20,'Paul','MacDonald','VPF','2014-07-25',NULL),
(21,'Khalil','Reed','TSM','2014-12-12',NULL),
(22,'Lisa','Wright','TTC','2020-06-10',NULL),
(23,'Bob','Boughner','ASC','2020-09-01',NULL),
(24,'Jay','Varady','AC','2020-01-30',NULL);

ALTER TABLE Players
ALTER COLUMN Height varchar(20) null;


 INSERT INTO Players VALUES
(26,'Riley','Barber',27,'6ft0','1994-02-07','RW',1,'United States',NULL,2022),
(59,'Tyler','Bertuzzi',26,'6ft1','1995-02-24','LF',1,'Canada',4250000,2022),
(42,'Kyle','Criscuolo',29,'5ft8','1992-05-05','C',1,'United States',52500,2022),
(65,'Danny','DeKeyser',31,'6ft3','1990-03-07','D',1,'United States',4500000,2022),
(57,'Turner','Elson',29,'6ft0','1992-09-13','LF',1,'Canada',15000,2022),
(73,'Adam','Erne',26,'6ft1','1995-04-20','LF',1,'United States',2100000,2022),
(14,'Robert','Fabbri',26,'5ft10','1996-01-22','C',1,'Canada',3100000,2022),
(89,'Sam','Gagner',32,'5ft11','1989-08-10','C',1,'Canada',850000,2022),
(29,'Thomas','Greiss',36,'6ft2','1986-01-29','G',6,'Germany',3600000,2022),
(45,'Magnus','Hellburg',30,'6ft6','1991-04-04','G',6,'Sweden',64000,2022),
(25,'Taro','Hirose',25,'5ft10','1996-06-30','LF',1,'Canade',NULL,2022),
(17,'Filip','Hronek',24,'6ft0','1997-11-02','D',1,'Czechia',4400000,2022),
(84,'Olli','Juolevi',23,'6ft2','1998-05-05','D',1,'Finland',202500,2022),
(71,'Dylan','Larkin',25,'6ft1','1996-07-30','C',1,'United States',6750000,2022),
(2,'Nick','Leddy',30,'6ft0','1991-03-20','D',1,'United States',2750000,2022),
(28,'Gustav','Lindstrom',23,'6ft2','1998-10-20','D',1,'Sweden',850000,2022),
(92,'Vladislav','Namestnikov',29,'6ft0','1992-11-22','C',1,'Russia',1000000,2022),
(39,'Alex','Nedeljkovic',26,'6ft0','1996-01-07','G',6,'United States',3000000,2022),
(82,'Jordan','Oesterle',29,'6ft0','1992-06-25','D',1,'United States',1350000,2022),
(46,'Chase','Pearson',24,'6ft4','1997-08-27','C',1,'Canada',NULL,2022);


INSERT INTO Performance VALUES
(26,2022,4,0,0,0,NULL),
(59,2022,68,30,32,62,NULL),
(42,2022,6,0,2,2,NULL),
(65,2022,59,0,11,11,NULL),
(57,2022,2,0,0,0,NULL),
(73,2022,79,6,13,19,NULL),
(14,2022,56,17,13,30,NULL),
(89,2022,81,13,18,31,NULL),
(29,2022,22,12,32,44,NULL),
(45,2022,0,0,0,0,NULL),
(25,2022,15,1,3,4,NULL),
(17,2022,78,5,33,38,NULL),
(84,2022,8,0,0,0,NULL),
(71,2022,71,31,38,69,NULL),
(2,2022,55,1,15,16,NULL),
(28,2022,63,1,12,13,NULL),
(92,2022,60,13,12,25,NULL),
(39,2022,0,0,0,0,NULL),
(82,2022,45,2,6,8,NULL),
(46,2022,3,0,0,0,NULL);

INSERT INTO Injured VALUES
(26,2022,'No',NULL),
(59,2022,'No',NULL),
(42,2022,'No',NULL),
(65,2022,'No',NULL),
(57,2022,'No',NULL),
(73,2022,'No',NULL),
(14,2022,'Yes','Broken Leg / out for season'),
(89,2022,'No',NULL),
(29,2022,'No',NULL),
(45,2022,'No',NULL),
(25,2022,'No',NULL),
(17,2022,'No',NULL),
(84,2022,'No',NULL),
(71,2022,'No',NULL),
(2,2022,'No',NULL),
(28,2022,'No',NULL),
(92,2022,'No',NULL),
(39,2022,'No',NULL),
(82,2022,'No',NULL),
(46,2022,'No',NULL);*/


