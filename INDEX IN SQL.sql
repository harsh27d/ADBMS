-- Index in MYSQL how to create indexes
select * from employee;
create index Demoindex on employee(FirstName);

show index from employee;
create index Demoiindex2 on employee(FirstName , LastName);
drop index Demoindex on employee;
drop index Demoiindex2 on employee;

-- Auto Increment 
create table person(Personid int NOT NULL auto_increment,
LastNamr varchar (225) not null ,
FirstName varchar(255),
Age int , 
primary key (Personid)
);
desc Person;
insert into person (Lastnamr , FirstName , Age) values( 'Damodhar' , 'Harshdeep' , 23), ('Sinkar' , 'Bhushan' , 24);
select * from person