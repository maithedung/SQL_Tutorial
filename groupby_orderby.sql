/*
	Group By, Order by
*/

select Gender, count(Gender) as GenderCount, Age
from EmployeeGraphics
where Age > 20
group by Gender, Age
order by GenderCount desc

select *
from EmployeeGraphics
order by Age desc, Gender
