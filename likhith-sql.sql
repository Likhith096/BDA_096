create database office;
use office;

create table employee
(
 emp_id int,
 emp_name varchar(15),
 job_name varchar(20),
 manager_id int,
 hire_date date,
 salary float,
 commision float,
 dep_id int,
 primary key (emp_id),
 foreign key (dep_id) references department(dep_id) on delete cascade on update cascade
);


create table department
(
 dep_id int primary key,
 dep_name varchar(20),
 dep_location varchar(15)
 );
 
 insert into department  values
 (100, "CSE" , "PG Block"),
 (200, "ME", "Mech Block");

truncate department;
 
 insert into employee values
(101, 'John Smith', 'Manager', NULL, '1991-02-22', 60000.00, NULL, 100),
(102, 'Jane Doe', 'Analyst', 101, '1991-02-22', 45000.00, 500.00, 100),
(103, 'Michael Johnson', 'Manager', NULL, '1991-02-22', 65000.00, NULL, 200),
(104, 'Emily Brown', 'Clerk', 103, '1991-02-22', 55000.00, 700.00, 200),
(105, 'David Lee', 'Clerk', 103, '2021-07-15', 70000.00, 1000.00, 100);

 -- Q 2
select salary 
from employee;
-- Q 3
select emp_name 
from employee
where hire_date = '1991-02-22';

-- Q 4
select avg(salary)
from employee
where job_name = "Analyst";


-- Q 5
select emp_name 
from employee 
where job_name ="Manager" or job_name = "Clerk";


-- Q 6
select emp_name 
from employee
where salary >= 24000 and salary <= 50000;



 
 
 