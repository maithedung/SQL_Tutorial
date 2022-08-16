/*
	Stored Procedures
*/

create procedure test
as
select *
from EmployeeGraphics

exec test

create procedure Temp_Employee4
as
create table #Temp_Employee4
(
	JobTitle varchar(50),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)

insert into #Temp_Employee4
select JobTitle, count(JobTitle), avg(Age), avg(Salary)
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
group by JobTitle

select *
from #Temp_Employee4

exec Temp_Employee4 @JobTitle = 'Salesman'



exec Temp_Employee2

select *
from #Temp_Employee2