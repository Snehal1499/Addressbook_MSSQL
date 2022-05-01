-- UC11.1:- Create table PayrollDetails 
create table PayrollDetails(
Payroll_id int not null Primary Key,
BasePay int not null,
Deduction int not null,
TaxtablePay as (BasePay-Deduction) persisted,
NetPay as (BasePay-Deduction-0.05*( BasePay-Deduction)) persisted,
IncomeTax as 0.05*(BasePay-Deduction) persisted
);
select * from PayrollDetails

--Insert Values PayrollDetails Table
insert into PayrollDetails values (1,500000,40000),(2,400000,8000),(3,450000,50000),(4,300000,45000);
select * from PayrollDetails


--UC11.2:- Create EmployeeDetails Table
create table EmployeeDetails 
(
Emp_id int not null Primary Key identity(1,1),
Emp_Name varchar(50) not null,
Gender char(1) not null,
Phone_Number varchar(50),
Payroll_id int not null Foreign key References PayrollDetails(Payroll_id),
Start_Date Date default GetDate()
);
select * from EmployeeDetails; -- Display Table

--insert values into EmployeeDetails Table
INSERT into EmployeeDetails(Emp_Name,Gender,Phone_Number,Payroll_id) values
('Shubham Seth','M','8188616249','1'),
('Ajay Seth','M','9856237845','2'),
('Om Prakash','M','7856239865','3'),
('Terissa','F','8945123698','4');

--UC11.3:- Create Table Department   relation M-M
create table Department(Dept_id int not null identity(1,1) primary key,DeptName varchar(50) not null unique);
select * from Department;  --display Table

--drop table Department
--Insert Values Department Table
insert into Department(DeptName) values
('Computer'),
('IT'),
('Civil'),
('Mech');
select * from Department;  --display Table


--UC11.4:- Create Table DeptEmployee   relation M-M
create table DeptEmployee(
Emp_id int not null Foreign key references EmployeeDetails(Emp_id),
Dept_id int not null Foreign key references Department(Dept_id) 
);
select * from DeptEmployee;

--Insert Values into DeptEmployee Table
insert into DeptEmployee values(1,3);
select * from DeptEmployee;


--UC11.5:- Create Table Addresses  Relation 1-1
create table Addresses(
Emp_id int not null primary key Foreign key references EmployeeDetails(Emp_id),
Street varchar(50) not null,
City varchar(50),
State varchar(50)
);
select * from Addresses;

--Insert Values Addresses Table
insert into Addresses Values
(1,'Chandawak-Ghazipur Road','Jaunpur','UttarPradesh'),
(2,'Kale Colony','Pune','Maharashtra');
select * from Addresses;
