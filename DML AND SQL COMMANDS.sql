-- NOT NULL Constraint
create database company_db;
show databases;
create table Employee(EmpID int NOT NULL , FirstName varchar(10),
lastname varchar(10) , EmpAge int);
desc Employee;
use company_db;
create table Employee(EmpID int NOT NULL , FirstName varchar(10),
lastname varchar(10) , EmpAge int);

insert into employee value(NULL , "Ravi " , "Kumar" , 25); -- will show error
 insert into employee value(1 , null , "Damodhar" , 21);

-- Unique Key Constraint;
create table Employee1(EmpID int NOT NULL , FirstName varchar (10),LastName varchar (10) ,unique(EmpID));
insert into Employee1 values(NULL , "Ravi" , "Kumar"); -- will show error
desc employee1;

-- check constrtaints while Creating table 

create table Employee3 (EmpID int NOT NULL , FirstName varchar(10), LastName varchar(10) ,EmpAge int ,check(EmpAge>20)); 
insert into employee3 values(null , 'Harshdeep', 'Damodhar' , 21); -- Gives error
insert into employee3 values(1 , 'Harshdeep', 'Damodhar' , 21);
insert into employee3 values(1 , 'Bhushan', 'Sinkar' , 18); -- Gives error emp age not fill criteria it must be grater than 20
insert into employee3 values(2 , 'Bhushan', 'Sinkar' , 22);
desc employee3;

-- Apply the salary constraints to salary  coolumn
alter table employee3 add column salary int, add check (salary >=5000);
desc employee3;

insert into employee3 values(4, 'Nupur' , 'Shah' , 25 , 7000);
insert into employee3 values(4, 'Raj' , 'Gore' , 21 , 5000);
show create table employee3; -- check the table constraints
select * from employee3;

alter table employee3 drop check employee3_chk_2;

-- check if the salary column constraints is drop using insert 
insert into employee3 values(5, 'Om' , 'Jadhav' , 21 , 2000);

-- NOTNULL , check and primary key constraints 

create table employee6 (EmpID int NOT NULL , FirstName varchar(10), LastName varchar(10) , EmpAge int , check (EmpAge>20), primary key(EmpID));

insert into employee6 value (1, 'Ravi' , 'Kumar' , 22);
insert into employee6 value(1, 'Ram' , 'Kumar' , 21); -- Now duplicate entry will give error
insert into employee6 value (2, 'Ram' , 'Kumar' , 21);

-- check constraints on multiple columns
create table employee7 (EmpID int Primary key , FirstName varchar(10), LastName varchar(10) , EmpAge int ,Salary int);
insert into employee7 values (1 , 'Ram' , 'Kumar' , 20 , 5000);
alter table employee7 drop check chk_EmpAge_salary; 
-- to allow naming and defining a check constraints om multiple columns
alter table employee7 add constraint chk_EmpAge_Salary check(EmpAge>19 AND Salary >=5000);

show create table employee7;
select * from employee7;

-- Default Constraint: set a default value for a column if no other value specified 
create table employee4 (EmpID int NOT NULL , FirstName varchar(10),
LastName varchar(10) , EmpDept varchar(10) default 'Opertations');

desc Employee4;

