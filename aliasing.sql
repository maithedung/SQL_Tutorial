/*
	Aliasing
*/

select FirstName + ' ' + LastName as FullName
from EmployeeGraphics

select avg(Age) as AgeAvg
from EmployeeGraphics 

select eg.EmployeeID
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID