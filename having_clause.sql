select jobtitle, avg(salary) as averagesalary
from employeedemographics join employeesalary 
on  employeedemographics.employeeid = employeesalary.employeeid
group by jobtitle
having avg(salary) > 40000
order by avg(salary)