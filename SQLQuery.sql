
/* DDl commands*/

/*CREATE*/
create table employee(
     id int,
	 firstname varchar(255),
	 lastName varchar(255),
	 age int,
	 city varchar(255),
);


select * from employee;

/*Alter*/

alter table employee add salary int;

/*Rename*/
alter table employee rename column secondName to lastName;

/*Truncate*/
truncate table employee;

/*Drop*/
drop table employee;


/*DML Commands*/

/*Insert*/
Insert into employee(id,firstName,lastName,age,city,salary)values(101,'Himanshu','Khetwal',22,'Bageshwar',50000);
Insert into employee(id,firstName,lastName,age,city,salary)values(102,'Rohit','Kumar',21,'Dehradun',51000);
Insert into employee(id,firstName,lastName,age,city,salary)values(103,'Gaurav','Majila',23,'Bageshwar',50000);
Insert into employee(id,firstName,lastName,age,city,salary)values(104,'Akash','Rawat',25,'Badowala',52000);
Insert into employee(id,firstName,lastName,age,city,salary)values(105,'Saurabh','Kandapal',24,'Almora',35000);

/*Update*/
update employee set lastName='majila' where firstName='Gaurav';

/*delete*/
delete from employee where id=105;


select * from employee;

Insert into employee(id,firstName,lastName,age,city,salary)values(105,'Saurabh','Kandapal',24,'Almora',35000);


select * from employee where city='Bageshwar' and age >=30;


select * from employee where salary between 40000 and 60000;


select distinct (salary) from employee;


SELECT MAX(SALARY) FROM employee WHERE SALARY < (SELECT MAX(SALARY) FROM employee);


/*SQL Aggregations function*/

select avg(age) from employee;
select count(salary) from employee;
select max(salary) from employee;
select min(salary) from employee;
select sum(salary) from employee;


/*SQL group by clause, Having and order by */

create table Department(
id int,
firstName varchar(255),
lastName varchar(255),
salary int,
depId int
);

Insert into department(id,firstName,lastName,salary,depId)values(103,'Harry','Potter',20000,12);

Insert into department(id,firstName,lastName,salary,depId)values(102,'Edwin','Thomas',15000,11);

Insert into department(id,firstName,lastName,salary,depId)values(101,'Steven','Conen',10000,10);

Insert into department(id,firstName,lastName,salary,depId)values(101,'Erik','John',20000,12);

select * from department;

update department set id=100 where firstName='Erik';

/*Group By*/

select max(salary),depId from department group by depId;

/*Having clause*/

select avg(salary),depId from department group by depId having count(depId)>=2;


/*Order by*/

select *from department order by salary desc;


/*SQL JOINS*/

create table person(
empId int,
firstname varchar(255),
lastName varchar(255),
salary int,
depId int
);

create table department1(
depId int,
depName varchar(255),
managerId int,
locId int,
);


Insert into person(empId,firstName,lastName,salary,depId)values(100,'Erik','John',10000,12);
Insert into person(empId,firstName,lastName,salary,depId)values(101,'Steven','Cohen',10000,10);
Insert into person(empId,firstName,lastName,salary,depId)values(102,'Edwin','Thomas',15000,11);
Insert into person(empId,firstName,lastName,salary,depId)values(103,'Harry','Potter',20000,12);

select * from person;

Insert into department1(depId,depName,managerId,locId)values(10,'IT',200,1700);
Insert into department1(depId,depName,managerId,locId)values(11,'Marketing',201,1800);
Insert into department1(depId,depName,managerId,locId)values(13,'Resources',203,2400);
Insert into department1(depId,depName,managerId,locId)values(14,'Shipping',121,1500);

select * from department1;


/*Inner Join*/

select e.empId,e.firstName,e.lastName,d.depId,d.depName from person e inner join department1 d on e.depId=d.depId;

/* Left Join*/

select e.empId,e.firstName,e.lastName,d.depId,d.depName from person e left join department1 d on e.depId=d.depId;

/*Right Join*/

select e.empId,e.firstName,e.lastName,d.depId,d.depName from person e right join department1 d on e.depId=d.depId;

/*Full outer join*/

select e.empId,e.firstName,e.lastName,d.depId,d.depName from person e left join department1 d on e.depId=d.depId union 
select e.empId,e.firstName,e.lastName,d.depId,d.depName from person e right join department1 d on e.depId=d.depId;





