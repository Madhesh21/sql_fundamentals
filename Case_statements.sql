--select employeeid, firstname, age , 
--case 
--  when age > 30 then 'Senior'
--  when age <= 30 then 'junior'
--  else 'Interns'
--end as Category 
--from employeedemographics
--where age is not null 
--order by age

select firstname, lastname, jobtitle, salary ,
case
  when jobtitle = 'salesman' then salary + (salary * .10)
  when jobtitle = 'accountant' then salary + (salary * .05)
  else salary + (salary * 0.3)
end as SalaryRaise
from employeedemographics join employeesalary 
on  employeedemographics.employeeid = employeesalary.employeeid