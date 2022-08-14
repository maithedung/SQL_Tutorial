/*
	Inner Joins,
	Full/Left/Right/Outer Joins
*/

select *
from EmployeeGraphics eg
	inner join EmployeeSalary es on eg.EmployeeID = es.EmployeeID

select *
from EmployeeGraphics eg
	full outer join EmployeeSalary es on eg.EmployeeID = es.EmployeeID

select *
from EmployeeGraphics eg
	left outer join EmployeeSalary es on eg.EmployeeID = es.EmployeeID

select *
from EmployeeGraphics eg
	right outer join EmployeeSalary es on eg.EmployeeID = es.EmployeeID