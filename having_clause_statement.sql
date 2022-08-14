/*
	Having Clause
*/

select JobTitle, count(JobTitle) as JobTitleCount
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
group by JobTitle
having count(JobTitle) > 0

select JobTitle, avg(Salary)
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
group by JobTitle
having avg(Salary) > 40000
order by avg(Salary) desc