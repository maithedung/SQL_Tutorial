/*
	Temp Tables
*/
drop table if exists #temp_Employee
create table #temp_Employee
(
	EmployeeID int,
	JobTitle varchar(50),
	Salary int
)

insert into #temp_Employee values 
('1001', 'HR', '45000')

insert into #temp_Employee
select *
from EmployeeSalary

select * 
from #temp_Employee

/*
==================================================
*/
drop table if exists #Temp_Employee2
create table #Temp_Employee2
(
	JobTitle varchar(50),
	EmployeesPerJob int,
	AvgAge int,
	AvgSalary int
)

insert into #Temp_Employee2
select JobTitle, count(JobTitle), avg(Age), avg(Salary)
from EmployeeGraphics eg
	join EmployeeSalary es on eg.EmployeeID = es.EmployeeID
group by JobTitle

select * 
from #Temp_Employee2
