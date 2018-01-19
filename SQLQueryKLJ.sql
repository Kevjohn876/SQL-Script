--Create Database First;

--Create Table Customer(
--IDCustomer int Primary Key Not Null, 
--FirstName varchar(255),
--LastName varchar(255),
--Address varchar(255),
--PostalCode varchar(12),
--City varchar(255),
--Providence varchar(255),
--Age int,
--PhoneNumber int,
--Email varchar(90) Not Null,
--Gender varchar
--BirthDate varchar);

--Insert Into Customer values(1, 'Kevon','Johnson','82 Lavery trail','M1C4Z2','Toronto',
--'Ontario',21,41673580,'kljohn876@gmail.com','m','m');

--Insert Into Customer values(2, 'John', 'Wick','1 lavery trail','M1C4Z2','Toronto',
--'Ontario',21,41773580,'kunj@gmail.com','F','M');

--Insert Into Customer values(2, 'Michael', 'Wick','34 Meadowsvale','M1C4Z2','Toronto',
--'Ontario',21,4177357034,'MichW@gmail.com','F','F');

--Insert Into Customer values(3, 'Halalaji', 'Williams','123 lavery trail','M1C4Z2','Scarborough',
--'Ontario',21,4177350221,'Halwilli33@Hotmail.com','M','F');

--Select * From Customer;

--Select * From Customer Where FirstName = 'John';

--Select * From Customer Where Email like '%Kun%';


--Update Customer Set FirstName = 'Kevaughn' where FirstName = 'Kevon';


--Update Customer Set LastName = 'Jackson' where LastName = 'Johnson';


--Select * From Customer;
--Select * From Customer Where FirstName = 'Kevaughn';

--Delete From Customer Where FirstName = 'John';





--Create Table Orders(
--IDOrder int Primary Key Not Null,
--Quantity varchar(255),
--Amount float,
--DateOrder DateTime,
--IDCustomer int references Customer);


--Insert Into Orders values(7,'26',780.95,(Select GetDate ()),1);

--Select * From Orders;
--Select * From Orders Where Amount = '780.95';

--Delete From Orders Where Amount = '750.95';

--Create Table Category(
--IDCategory int Primary Key Not Null,
--CategoryDesc varchar(255));

--Insert Into Category values(1,'Boot');
--Insert Into Category values(2,'Sneaker');
--Insert Into Category values(3,'FlipFlop');

--Select * From Category;
--Select * From Category Where CategoryDesc = 'Boot';


--Create Table Products(
--IDProducts int Primary Key Not Null,
--Color varchar(255),
--Amount Float,
--Size varchar,
--Brand varchar,
--Module varchar,
--Type varchar,
--IDCategory int references Category);

--Alter Table Products Alter Column Brand varchar(255);
--Alter Table Products Alter Column Module varchar(255);
--Alter Table Products Alter Column type varchar(255);
--Alter Table Products Alter Column Size varchar(5);

--Alter Table Products Add New varchar(34);
--Alter Table Products Drop Column New;
--Alter Table Products Drop Column Module;



--Insert Into Products values(1,'red',23,'8','nike','airforce1',2);
--Insert Into Products values(2,'blue',16,'11','nike','zoom',1);
--Insert Into Products values(3,'black',4,'10','nike','retro6',3);

--Select * From Products;
--Select * From Products Where Color = 'red';

--Select Substring(FirstName,1,3) From Customer;



--Create Table Payment(
--IDPayment int Primary Key Not Null,
--PaymentDesc varchar(255));

--Insert Into Payment values(1,'Cash');
--Insert Into Payment values(2,'Card');
--Insert Into Payment values(3,'PayPal');


--Select Left(FirstName,1) From Customer;
--Select Right(FirstName,3) From Customer;
--Select Len(FirstName) From Customer;
--Select Replace(FirstName,'Kevaughn','Kevon') From Customer;
--Select Upper(FirstName) From Customer;
--Select Lower(FirstName) From Customer;
--Select Replicate(FirstName,1) From Customer;
--Select Max(Amount) From Orders;
--Select Min(Amount) From Orders;
--Select Count(Amount) From Orders;
--Select Sum(Amount) From Orders;
--Select FirstName+''+LastName As FullName From Customer;
--Select * From Customer Order By FirstName;
 --Alter Table Customer Alter Column PhoneNumber varchar(55);
 
  
--Select Substring(FirstName,1,1) as Initial,
--FirstName+' '+LastName as FullName,
--City+','+Upper(Left(Providence,2)) as City,
--'+1 '+'('+ Left(PhoneNumber,3)+')'+Substring(PhoneNumber,4,3)+'-'+right(PhoneNumber,4)
--as PhoneNumber From Customer;

--Select Prod.Color,Prod.Size,ord.Quantity,Ord.Amount From Products Prod
--Inner Join Orders Ord On Prod.IDProducts = Ord.IDProducts;

--Select Prod.Type,Prod.Brand,ord.Quantity,Ord.Amount, Ord.DateOrder From Products Prod
--Inner Join Orders Ord On Prod.IDProducts = Ord.IDProducts;

--Select Prod.Type,Prod.Brand,ord.Quantity,Ord.Amount, Ord.DateOrder From Products Prod
--Left Join Orders Ord On Prod.IDProducts = Ord.IDProducts;

--Select Prod.Type,Prod.Brand,ord.Quantity,Ord.Amount, Ord.DateOrder From Products Prod
--Right Join Orders Ord On Prod.IDProducts = Ord.IDProducts;

--Select Prod.Type,Prod.Brand,ord.Quantity,Ord.Amount, Ord.DateOrder From Products Prod
--Full Outer Join Orders Ord On Prod.IDProducts = Ord.IDProducts;

--Select Prod.*, Ord.*,Prod.Size,Prod.Amount*ord.Quantity as Amount From Products Prod
--Left Join Orders Ord On Prod.IDProducts = Ord.IDProducts;

--Select IDProducts From Products
--Union
--Select IDProducts From Orders;

--Select Prod.Brand, Prod.Type,+'CAD '+ 
--Cast(Prod.Amount as Varchar) as Amount ,Ord.Quantity,+'CAD '+ 
--Cast(Prod.Amount*Ord.Quantity as Varchar)as Amount, 
--Cust.FirstName From Products Prod
--Inner Join Orders Ord On Prod.IDProducts = Ord.IDProducts
--Inner Join Customer Cust On Ord.IDCustomer = Cust.IDCustomer;

--Create Table Users(
--IdUser int Identity(1,1) Not Null,
--FirstName varchar(255),
--LastName varchar(255),
--Email varchar(255),
--Password varchar(255)); 

--Select * From Users;

--Insert into Users(FirstName,LastName,Email,Password) values ('John','Wick','JW@gmail.com','54321');

--Insert into Users(FirstName,LastName,Email,Password) values ('Jack','Black','meow@gmail.com','90909');

--Insert into Users(FirstName,LastName,Email,Password) values ('Tashana','Williams','tashw@gmail.com','009988');

--Insert into Users(FirstName,LastName,Email,Password) values ('Damari','Marshall','batcat12@gmail.com','11123');

--Insert into Users(FirstName,LastName,Email,Password) values ('Lautina','Rodrigez','ebonyx@gmail.com','666333');

--Insert into Users(FirstName,LastName,Email,Password) values ('Tina','James','Tjames11@yahoo.com','665553');


--Select Case When Products.Brand Like '%Nike%' Then 'Sale' Else 'Not in Sale' End As SalesProduct, Products.* From Products;


--Select IIF (Products.Amount < 20 and Products.Brand Like '%Nike%', 'Sale', 'Not in Sale') As SalesProduct, Products. * From Products;



--Select LastName+' '+FirstName as FullName,
--'('+ Left(PhoneNumber,3)+') '+ Substring(PhoneNumber,4,3)+' - '+right(PhoneNumber,4) as PhoneNumber, 
--Email, Case When Email Like '%Gmail%' Then 'Gmail' When Email Like '%Hotmail%' Then 'Hotmail' Else 'other' End as Domain,
--City, IIF(Customer.City Like '%Toronto%', 'Local', 'Outside') as Local From Customer;

----Select DateName (yyyy, GetDate());
----Select DateName (Month, GetDate());
----Select DateName (d, GetDate());
----Select DateName (Week, GetDate());

--Select Case When DateName(WeekDay, GetDate()) = 'Saturday' Then 'Weekend'
--When DateName(WeekDay, GetDate()) = 'Sunday' Then 'Weekend'  
--Else 'Weekday' end as WeekDay;


--IF DateName(WeekDay, GetDate()) In ('Sunday','Saturday')
--Select 'Weekend' Else Select 'Weekday';

--While (Select Avg(Amount) From Products) < 500
--Begin
--Update Products Set Amount = Amount * 0.70 Break End;

--Select * From Products;
