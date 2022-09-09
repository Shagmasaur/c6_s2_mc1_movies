CREATE DATABASE IF NOT EXISTS Moviesdb;
USE Moviesdb;
-- task 1
CREATE TABLE MovieTable(Title VARCHAR(30), BudgetInMillions INT, ReleaseDate VARCHAR(20), RevenueInMillions INT, RatingAverage DOUBLE);
DESCRIBE MovieTable;
-- task 2
INSERT INTO MovieTable VALUES('Avatar',237,'10122009',278,7.2);
INSERT INTO MovieTable VALUES('Titanic',200,'18111997',185,7.5);
INSERT INTO MovieTable VALUES('The Avengers',220,'25042012',152,7.4);
INSERT INTO MovieTable VALUES('Jurassic World',150,'09062015',151,6.5);
INSERT INTO MovieTable VALUES('Furious 7',190,'01042015',150,7.3);
INSERT INTO MovieTable VALUES('The Avengers:Age Of Ultron',280,'22042015',141,7.3);
INSERT INTO MovieTable VALUES('Iron Man 3',200,'18042013',122,6.8);
INSERT INTO MovieTable VALUES('Minions',74,'17062014',11,6.4);
INSERT INTO MovieTable VALUES('Captain America:Civil War',250,'27042016',115,7.1);
INSERT INTO MovieTable VALUES('Transformers:Dark Of The Moon',195,'28062011',112,6.1);
SELECT * FROM MovieTable;
-- task 3
SELECT * FROM MovieTable WHERE Title = 'Jurassic World' AND RatingAverage = 6.5;
-- task 4
SELECT * FROM MovieTable WHERE RatingAverage >7;
-- task 5
SELECT * FROM MovieTable WHERE Title='The Avengers';
-- task 6
SELECT Title,RatingAverage FROM MovieTable WHERE RatingAverage BETWEEN 7 AND 8;
-- task 7
SELECT Title FROM MovieTable WHERE BudgetInMillions>250 OR BudgetInMillions=250;
-- task 8
SELECT Title,RatingAverage FROM MovieTable WHERE RevenueInMillions BETWEEN 150 AND 200;
-- task 9
SELECT Title,ReleaseDate FROM MovieTable WHERE Title LIKE 't%';
-- task 10
SELECT sum(RevenueInMillions) FROM MovieTable;
-- task 11
SELECT Title,RevenueInMillions FROM MovieTable WHERE RevenueInMillions = (SELECT MIN(RevenueInMillions) FROM MovieTable);