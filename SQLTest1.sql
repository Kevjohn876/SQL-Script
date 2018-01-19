--Create Database SocialMedia;

--Create Table Users(
--IDUser int Primary Key Not Null,
--FirstName varchar(255),
--LastName varchar(255));


--Insert Into Users values(1,'James','Robert');
--Insert Into Users values(2,'Michael','Brown');
--Insert Into Users values(3,'John','Wickin');

--Select * From Users;

--Create Table Messages(
--IDMessage int Primary Key Not Null,
--MessageText varchar(255),
--IDUser int references Users);
--Alter Table Messages Add UserReceive varchar(255);

Select * From Messages;

--Insert Into Messages values(1,'Hey',1,2);
--Insert Into Messages values(2,'Hello',2,1);
--Insert Into Messages values(3,'Hola',3,2);
--Insert Into Messages values(4,'Sup',3,1);
--Insert Into Messages values(5,'Wassup',1,3);
--Insert Into Messages values(6,'Wah Gwan',2,3);

----Delete From Messages Where UserReceive = 'Bro';
----Alter Table Messages Alter Column UserReceive int;


--Create Table Posts(
--IDPost int Primary Key Not Null,
--PostText varchar(255),
--IDUser int references Users);

--Insert Into Posts values(1,'Post 4',1);
--Insert Into Posts values(2,'Post 6',3);
--Insert Into Posts values(3,'Post 8',2);

--Create Table Photos(
--IDPhoto int Primary Key Not Null,
--PhotoImage int);


--Create Table Relationships(
--IDRelationship int Primary Key Not Null,
--StatusCodes int);
--Alter Table Relationships Add RelationshipUserReceive int;
--Alter Table Relationships Add IDUser int references Users;

--Select * From Relationships;

--Insert Into Relationships values(1,'0',1);
--Insert Into Relationships values(2,'1',2);
--Insert Into Relationships values(3,'2',1);
--Insert Into Relationships values(4,'3',3);
--Update Relationships Set IDUser = '2' where IDRelationship = 1;
--Update Relationships Set IDUser = '1' where IDRelationship = 2;
--Update Relationships Set IDUser = '2' where IDRelationship = 3;
--Update Relationships Set IDUser = '3' where IDRelationship = 4;


--5-Suppose a person sends a friend request to someone else. What should be the
--SQL code for that? Moreover, 

--Insert Into Relationships values(1,'0',1);

--write a line of code for the case 
--that a person who received friendship request accepts it.

--Update Relationships Set StatusCodes = 1 where StatusCodes 0;


--6-Write a code that a person posts a text on their wall.

--Insert Into Posts values(1,'Post 4',1);


--7-Write a code for chatting between two people. Suppose user1 sends a text to user2.
--How this should be implemented using SQL codes?

--Insert Into Messages values(4,'Sup',3,1);


--8-Select any table using at least one left or right function and substring.

--Select Substring(FirstName,1,2) as Initial,
--Left(FirstName,4) as Nickname From Users;


--9–Select tables User and messages showing the names of the User that sends a
--message and the Users that received the message. (inner join)

--Select U.FirstName, U.LastName, M.IDUser, M.UserReceive 
--From Messages M
--Inner Join Users U on M.IDUser = U.IDUser;







