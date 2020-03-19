create table RhpfLO2jOz.Employees (
    Employee_ID_Num int,
    Name varchar (250),
    Location varchar (250),
    Position varchar (250)
);

Create table RhpfLO2jOz.Sales (
SalesRep int,
Product varchar (250),
Quantity int,
Price int
);

insert into RhpfLO2jOz.Employees
values 
('123456', 'Jack', 'London', 'Phone Sales Asst.'),
('654321', 'John', 'New York', 'Web Sales Asst.'),
('123321', 'Clara', 'Singapore', 'Direct Sales Asst.'),
('456654', 'Joanna', 'Sofia', 'Marketing Asst.');

insert into RhpfLO2jOz.Sales
values
('123456', 'TV Set', '1', '1000'),
('123456', 'Laptop', '1', '699'),
('123321', 'Smart Phone', '2', '399'),
('654321', 'Fridge', '1', '500');

create table RhpfLO2jOz.PAYLIST (
IdNum int,
Gender varchar (10),
Jobcode varchar (25),
Salary int,
Birth varchar (100),
Hired varchar (100)
);

insert into RhpfLO2jOz.PAYLIST
values
('1639', 'F', 'TA1', '42260', '26JUN70', '28JAN91'),
('1065', 'M', 'ME3', '38090', '26JAN54', '07JAN92'),
('1400', 'M', 'ME3', '29769', '05NOV67', '16OCT90'),
('1561', 'M', '', '36514', '30NOV63', '07OCT87'),
('1221', 'F', 'FA3', '0', '22SEP63','04OCT94');

create table RhpfLO2jOz.employee_r1 (
Emp_id int,
Emp_name varchar (50),
Dep_name varchar (50),
Manager_id int
);

insert into RhpfLO2jOz.employee_r1
values
('1', 'Hasan', 'hr', '2'),
('2', 'Saon', 'tech', '2'),
('3', 'Sahed', 'qa', '4'),
('4', 'Sifat', 'hr', '4'),
('5', 'Nayema', 'hr', '4'),
('7', 'Tanvir', 'tech', '4'),
('8', 'Tasnuva', 'tech','4');

create table RhpfLO2jOz.employee_r2 (
Emp_id int,
Emp_name varchar (50),
Dep_name varchar (50),
Manager_id int
);

Alter table RhpfLO2jOz.employee_r2 modify column Manager_id varchar (50);

insert into RhpfLO2jOz.employee_r2
values
('1', 'Hasan', 'hr', 'Saon'),
('2', 'Saon', 'tech', 'Saon'),
('3', 'Sahed', 'qa', 'Sifat'),
('4', 'Sifat', 'hr', 'sofat'),
('5', 'Nayema', 'hr', 'sifat'),
('7', 'Tanvir', 'tech', 'sifat'),
('8', 'Tasnuva', 'tech','sifat');

create table RhpfLO2jOz.Inner_Join (
Emp_name varchar (50),
Description varchar (50)
);

create table RhpfLO2jOz.Left_Join (
Emp_name varchar (50),
Description varchar (50)
);

create table RhpfLO2jOz.Right_Join (
Emp_name varchar (50),
Description varchar (50)
);

create table RhpfLO2jOz.Full_Join (
Emp_name varchar (50),
Description varchar (50)
);

insert into RhpfLO2jOz.Inner_Join
values
('Saon', 'qa'),
('saon', 'test'),
('Sahed', 'CEO'),
('Tasnuva', 'Technician');

insert into RhpfLO2jOz.Left_Join
values
('Hasan', ''),
('Saon', 'test'),
('Sahed', 'CEO'),
('Sifat', 'Technician'),
('Nayema', ''),
('Tanvir', ''),
('Tasnuva', ''),
('saon', 'qa');

insert into RhpfLO2jOz.Right_Join
values
('Sahed', 'CEO'),
('Tasnuva', 'Technician'),
('Saon', 'qa'),
('Saon', 'Test'),
('', 'test');

insert into RhpfLO2jOz.Full_Join
values
('Hasan', ''),
('Saon', 'qa'),
('Sahed', 'CEO'),
('Sifat', ''),
('Nayema', ''),
('Tanvir', ''),
('Tasnuva', 'Technician'),
('Saon', 'Test');

create table RhpfLO2jOz.Self_Join (
Emp_name varchar (50),
Manager_name varchar (50)
);