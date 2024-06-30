create table if not exists Actors (
Id INT AUTO_INCREMENT,
FirstName varchar(20) NOT NULL,
SecondName varchar(20) NOT NULL,
doB DATE NOT NULL,
Gender ENUM('male', 'female', 'other') NOT NULL,
MaritalStatus enum('Married', 'Divorced', 'Single', 'Unknown') default "Unknown",
NetWorthInMillions DECIMAL NOT NULL,
primary key (Id));

Show tables;

desc actors;

INSERT INTO Actors ( 
FirstName, SecondName, DoB, Gender, MaritalStatus, NetworthInMillions) 

VALUES 
("Jennifer", "Aniston", "1969-11-02", "Female", "Single", 240.00),
("Angelina", "Jolie", "1975-06-04", "Female", "Single", 100.00),
("Johnny", "Depp", "1963-06-09", "Male", "Single", 200.00);

INSERT INTO Actors 
VALUES (DEFAULT, "Dream", "Actress", "9999-01-01", "Female", "Single", 000.00);

select * from Actors;

select FirstName, SecondName from Actors where FirstName="Dream";

SELECT FirstName, SecondName from Actors WHERE NetWorthInMillions > 200;

SELECT * from Actors WHERE FirstName like "Jen%";

SELECT * from Actors order BY FirstName desc;

SELECT * from Actors order by NetWorthInMillions desc, FirstName asc;
