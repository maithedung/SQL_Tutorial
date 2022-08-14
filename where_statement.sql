/*
	Where Statement
	=, <>, <, >, >=, <=
	And, Or, Like, Null, Not Null, In
*/

---- =
--select *
--from EmployeeGraphics
--where FirstName = 'Dung'

---- <>
--select *
--from EmployeeGraphics
--where FirstName <> 'Dung'

---- >, <, >=, <=
--select *
--from EmployeeGraphics
--where Age > 30

-- Like
select *
from EmployeeGraphics
where FirstName like 'N%'