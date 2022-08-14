/*
	Select Statement
	*, top, distinct, count, as, min, max, avg
*/
---- *
--select *
--from EmployeeGraphics

---- top
--select top 5 *
--from EmployeeGraphics

---- distinct
--select distinct(Gender)
--from EmployeeGraphics

---- count, as
--select count(FirstName) as FirstNameCount
--from EmployeeGraphics

---- max
--select max(Salary)
--from EmployeeSalary

---- min
--select min(Age) as AgeMin
--from EmployeeGraphics

-- avg
select avg(Salary) as SalaryAverage
from EmployeeSalary