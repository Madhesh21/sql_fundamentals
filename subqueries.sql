select * from EmployeeSalary
select * from EmployeeDemographics

select employeeid, jobtitle, (select avg(salary) from EmployeeSalary) as avgSalary 
from EmployeeSalary

select a.EmployeeID, AvgSalary from (select employeeid, salary, avg(salary) over() as AvgSalary from EmployeeSalary) a

select * from EmployeeSalary
where EmployeeID in (
   select EmployeeID from EmployeeDemographics
   where Age > 30
)