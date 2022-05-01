use payroll_service

Insert into employee_payroll 
(Name,StartDate,Gender,Phone_Number,department,emp_address,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay)
values ('Terisa','2022-04-01','F',9090898977,'Sales','india',50000,2000,48000,3000,45000)
Go
Insert into employee_payroll 
(Name,StartDate,Gender,Phone_Number,department,emp_address,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay)
values ('Terisa','2020-01-01','F',8990084977,'Marketing','india',80000,2000,78000,3000,75000)
Go

select *
from employee_payroll
Go
