-- DML Commands
create database college;
show databases; 
use college;
create table Employees(EmpID int , FirstName varchar(10),
LastName varchar(10), EmpAge int , Empzone varchar(10));
desc Employees;
insert into employees values(1 , "Harshdeep" , "Damodhar" , 23 , "East"),
(2 , "Arpit" , "Bavankule" , 25 , "West"); -- Multiple insertion syntax
insert into employees values(3 , "Bhushan" , "Sinkar" , 21 , "North");-- Single row insertion syntax
desc employees;

-- Single value updation
update employees set Empzone = "North" where EmpID = 3;
update employees set Empzone = "East" where EmpID = 2;
update employees set Empzone = "West" where EmpID = 1;

-- For multiple updation
update employees set EmpAge=30 , Empzone = "west" where EmpID =2;

-- Delete command
delete from employees where EmpID = 3;
update employees set firstname = "Harshdeep" where EmpID = 1;

select EmpID , firstname from employees;

truncate employees ; -- To delete all the rows from the table
 