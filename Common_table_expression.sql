/*
	CTEs
*/

with CTE_Employee as
(
	select FirstName, LastName, Gender, Salary
	, count(Gender) over (partition by Gender) as GenderTotal
	, avg(Salary) over (partition by Salary) as SalaryAvg
	from EmployeeGraphics eg
		join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
	where es.Salary > '45000'
)
select *
from CTE_Employee

select * 
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
where es.Salary > '45000'