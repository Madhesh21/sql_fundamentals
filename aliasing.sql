select firstname + ' ' + lastname Fullname
from sqltutorial.dbo.employeedemographics

select demo.employeeid, demo.firstname,sal.salary,war.age from sqltutorial.dbo.employeedemographics demo
left join sqltutorial.dbo.employeesalary sal on demo.employeeid = sal.employeeid
left join sqltutorial.dbo.warehouseemployeedemographics war on demo.employeeid = war.employeeid

