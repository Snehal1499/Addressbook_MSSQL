use payroll_service

ALTER TABLE employee_payroll
ADD Basic_Pay Money
Go
ALTER TABLE employee_payroll
ADD Deductions Money
Go
ALTER TABLE employee_payroll
ADD Taxable_Pay Money
Go
ALTER TABLE employee_payroll
ADD Income_Tax Money
Go
ALTER TABLE employee_payroll
ADD Net_Pay Money
Go

select *
from employee_payroll
Go