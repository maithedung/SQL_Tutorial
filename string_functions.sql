/*
	String Functions
	- TRIM, LTRIM, RTRIM
	- Replace
	- Substring
	- Upper, Lower
*/

create table EmployeeErrors
(
	EmployeeID varchar(50),
	FirstName varchar(50),
	LastName varchar(50)
)

insert into EmployeeErrors values
('10  01  ', 'Jimbo', 'Mike'),
('   1002', 'Join', 'Wick'),
('1003', 'Kenny', 'Dang - Ken')

select * from EmployeeErrors
select * from EmployeeGraphics

-- Using TRIM, LTRIM, RTRIM
select EmployeeID, trim(EmployeeID) as IDTrim
from EmployeeErrors

select EmployeeID, ltrim(EmployeeID) as IDTrim
from EmployeeErrors

select EmployeeID, rtrim(EmployeeID) as IDTrim
from EmployeeErrors

-- Using Replace
select LastName, replace(LastName, ' - Ken', '') as LastNameFixed
from EmployeeErrors

-- Using Substring
select substring(FirstName, 3, 3) as FirstNameSubstring
from EmployeeErrors

select 
	ee.FirstName, 
	substring(ee.FirstName, 1, 3) as eeSubstring, 
	eg.FirstName, 
	substring(eg.FirstName, 1, 3) as egSubstring
from EmployeeErrors ee 
	join EmployeeGraphics eg on substring(ee.FirstName, 1, 3) = substring(eg.FirstName, 1, 3)

-- Using UPPER and lower
select FirstName, lower(FirstName), upper(FirstName)
from EmployeeErrors

