create database basicjoin;
use basicjoin;
create table employee(
employee_id int primary key,
ename varchar(10));

insert into employee values(101 , "Harsh"),
(102,"Ram"),
(103,"Arpit"),
(104,"Raj");

create table project (project_id int primary key , pname varchar(50) , employee_id int , foreign key (employee_id) references employee(employee_id));

insert into project (project_id , pname , employee_id)
values(1 , 'Project A ' , 101),(2 , 'Project B ' , 102),(3 , 'Project C ' , 103),(4 , 'Project D ' , 104);

select * from project;
select * from employee;

insert into employee values(105 , 'Sanjay');
insert into employee values(106 , 'Akshay');

/* Inner join : Only matching record will be display*/
select * from employee join project on employee.employee_id = project.employee_id;

select e.ename , p.pname from employee e inner join project p on e.employee_id = p.employee_id; -- inner join 
select e.ename , p.pname from employee e right join project p on e.employee_id = p.employee_id; -- right join: shown only the data that are same in right side
select e.ename , p.pname from project p right join employee e on e.employee_id = p.employee_id;

select e.employee_id , e.ename , p.pname from employee e left join project p on e.employee_id = p.employee_id; -- left join : shows matching data on the left side

/* left join = inner join+any additional recordds inn the left table*/

/*Full outer join using the uniioin */
/* display all the matching and non matching data from both tables*/
select * from employee left join project on employee.employee_id = project.employee_id union select * from employee right join project on 
employee.employee_id = project.employee_id;

/* Display employee name who has not been assigned any project*/
select employee.ename , project.pname from employee left join project on employee.employee_id = project.employee_id where project.employee_id is not null;
select employee.ename , project.pname from employee left join project on employee.employee_id = project.employee_id where project.employee_id is null;