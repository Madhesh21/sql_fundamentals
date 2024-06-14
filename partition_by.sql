select demo.employeeid,firstname,salary,gender,
count(gender) over (partition by gender) as totalGender
from sqltutorial.dbo.employeedemographics demo
join sqltutorial.dbo.employeesalary sal 
on demo.employeeid = sal.employeeid

select gender,count(gender) totalGender
from sqltutorial.dbo.employeedemographics demo
join sqltutorial.dbo.employeesalary sal 
on demo.employeeid = sal.employeeid
group by gender
