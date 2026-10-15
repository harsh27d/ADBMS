create database user;
use user;
create table cutomer (Custid int , custname varchar(15), City varchar(10), product varchar(15), Price int);
desc customer;
alter table cutomer rename customer;

insert into customer value(1 , "Harsh" , "Amravati",  'Laptop' , 100000)
, (1 , "Bhushan" , "Mumbai",  'Mobile' , 50000), 
(3 , "Arpit" , "Pune",  'Dyson' , 20000000);

alter table customer add primary key (Custid);
create table CloneTable as select * from customer;
select * from CloneTable;
drop table CloneTable;

select custname , product , price  from customer where price>50000;
select custname , product , price  from customer where price>=50000;
select custname , product , price  from customer where price<=50000;
select custname , product , price  from customer where price>50000;

select * from customer where city = 'Amravati';
select * from customer where Custid=1;
/*Sorting data order by multiple column*/
select * from customer order by city asc , Price desc;

/*Single - row function */
/* Case Conversion function*/

select upper(custname), lower(product) from customer where Custid<3;/* Upper and lower function*/
alter table customer add column (lastname varchar(15));
update customer set lastname = 'Sinkar' where Custid = 1;
update customer set lastname = 'Damodhar' where Custid = 2;

select concat(custname,' ', lastname)as FullName from customer; 
/* Use of SUBSTR and INSTR funstion*/
select substr(Custname,1,1) from customer;
select substr(Custname,0,1) from customer;
select substr(Custname,1,0) from customer;

select instr(custname , 'a') as position from customer;


insert into customer value(4 , "Aarnav" , "Jalgao",  'Charger' , 500 , 'Deshmukh');

select substr(custname ,1, 2)as Name , instr(custname , 'a')as Number from customer ;

select substr(custname , 1, 3) as Name , instr(custname , 'a')as Number from customer where Custid<3;

