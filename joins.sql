select * from EmployeeDemographics inner join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId

select * from EmployeeDemographics full outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId

select * from EmployeeDemographics left outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId

select * from EmployeeDemographics right outer join EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId

select * from employeedemographics
inner join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid
where firstname <> 'micheal'
order by salary desc

select jobtitle, avg(salary) as avgSalary from employeedemographics
inner join employeesalary
on employeedemographics.employeeid = employeesalary.employeeid
where jobtitle = 'salesman'
group by jobtitle


