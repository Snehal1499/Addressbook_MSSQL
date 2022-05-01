
--UC12:- Ensure all retrieve queries done especially in UC 4, UC 5 and UC 7 are working with new table structure.
--Rechecking UC4 get income Tax Employee
select Emp_id,Emp_Name,IncomeTax from EmployeeDetails,PayrollDetails where EmployeeDetails.Payroll_id=PayrollDetails.Payroll_id;

--Retrive income Tax UC5 get income Tax Employee
select Emp_id,Emp_Name,IncomeTax from EmployeeDetails,PayrollDetails where Emp_Name='Om Prakash' and  
EmployeeDetails.Payroll_id=PayrollDetails.Payroll_id;

--Retrive income Tax UC5 get income Tax Employee
select Emp_id,Emp_Name,IncomeTax from EmployeeDetails,PayrollDetails where Start_Date between CAST('1900-01-01' as date) and GETDATE() and  
EmployeeDetails.Payroll_id=PayrollDetails.Payroll_id;

--Joining the EmployeeDetails table and PayrollDetails table using inner join
Select * from PayrollDetails a
inner join EmployeeDetails b on
a.Payroll_id = b.Payroll_id;

--Check MIN MAX Income Tax UC7
select * from PayrollDetails
Alter Table PayrollDetails add Gender varchar(1);
UPDATE PayrollDetails set Gender = 'F' where Payroll_id = 4;   --updating Gender
UPDATE PayrollDetails set Gender = 'M' where Payroll_id = 1 or Payroll_id = 2 or Payroll_id = 3 

Select Gender, MIN(IncomeTax) From PayrollDetails GROUP BY Gender;
Select Gender, MAX(IncomeTax) From PayrollDetails GROUP BY Gender;
Select Gender, AVG(IncomeTax) From PayrollDetails GROUP BY Gender;
Select Gender, Sum(IncomeTax) From PayrollDetails GROUP BY Gender;