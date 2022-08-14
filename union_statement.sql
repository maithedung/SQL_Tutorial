/*
	Union, Union All
*/

select *
from EmployeeGraphics
union
select *
from WareHouseEmployeeGraphics
order by EmployeeID desc
