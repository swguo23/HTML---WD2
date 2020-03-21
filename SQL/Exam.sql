Create table Employee_Simon (
Employee_id int,
First_name varchar (255),
Last_name varchar (255),
Salary int,
Joining_date date,
Department varchar (255),
Manager_id int,
Primary Key (Employee_id)
);

Create table Incentives_Simon (
Employee_id int,
Incentive_date date,
Incentive_amount int,
Foreign Key (Employee_id) references Employee_Simon(Employee_id)
);

Insert into Employee_Simon
values
(1, 'John', 'Abraham', 1000000, 20130101, 'Banking', 3),
(2, 'Michael', 'Clarke', 800000, 20130101, 'Insurance', 3),
(3, 'Roy', 'Thomas', 700000, 20130202, 'Banking', 1),
(4, 'Tom', 'Jose', 600000, 20130202, 'Insurance', 1),
(5, 'Jerry', 'Pinto', 650000, 20130202, 'Insurance', 1),
(6, 'Philip', 'Mathew', 750000, 20130101, 'Services', 5),
(7, 'TestName1', '123', 650000, 20130101, 'Services', 5),
(8, 'TestName2', 'Lname%', 600000, 20130202, 'Insurance', 5);

Insert into Incentives_Simon
values
(1, 20130201, 5000),
(2, 20130201, 3000),
(3, 20130201, 4000),
(1, 20130101, 4500),
(2, 20130101, 3500);

Select * from Employee_Simon;

Select First_name from Employee_Simon
order by First_name;

Select Upper(First_name) from Employee_Simon;

Select Department from Employee_Simon
Group by Department;

Select substring(First_name, 1,3) Extractstring from Employee_Simon;

Select * from Employee_Simon 
where First_name='John';

Select * from Employee_Simon
where First_name like '%o%';

Select * from Employee_Simon
where Salary < 800000;

Select Department, Sum(Salary)
From Employee_Simon
Group by Department;

Select Employee_Simon.First_name, Incentives_Simon.Incentive_amount
From Employee_Simon
Left Join Incentives_Simon
On Employee_Simon.Employee_id=Incentives_Simon.Employee_id
;

Select Employee_Simon.First_name, Incentives_Simon.Incentive_amount
From Employee_Simon
Right Join Incentives_Simon
On Employee_Simon.Employee_id=Incentives_Simon.Employee_id;

/*
Union is unique data from 2 tables
Union all is all data from 2 tables
*/

Select A.First_name As Manager,
B.First_name As Employee
From Employee_Simon As A,
Employee_Simon As B
Where A.Employee_id=B.Manager_id;
