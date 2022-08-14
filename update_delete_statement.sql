/*
	Updating/Deleting Data
*/

select *
from EmployeeGraphics

update EmployeeGraphics
set LastName = 'Huy', Age = 22
where EmployeeID = 1001

delete from EmployeeGraphics
where EmployeeID = 1001
