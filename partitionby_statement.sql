/*
	Partition By
*/

select FirstName, LastName, Gender, Salary
, count(Gender) over (partition by Gender) as TotalGender
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID

select FirstName, LastName, Gender, Salary
, count(Gender) 
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
group by FirstName, LastName, Gender, Salary