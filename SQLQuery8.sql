use payroll_service



ALTER TABLE employee_payroll
ADD Phone_Number VarChar(12)
Go
ALTER TABLE employee_payroll
ADD departmen varchar(20)
Go
ALTER TABLE employee_payroll
ADD emp_address varchar(20)
Go

select *
from employee_payroll
Go