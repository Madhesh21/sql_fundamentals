select * from  SQLTutorial.dbo.EmployeeDemographics

select  gender , count(employeeid) as employeecount from SQLTutorial.dbo.EmployeeDemographics group by gender order by count(employeeid) desc

select * from SQLTutorial.dbo.Employeesalary

select jobtitle, salary  from SQLTutorial.dbo.EmployeeSalary  group by jobtitle,salary order by salary desc
