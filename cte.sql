with cte_employee as (
  select firstname, lastname, gender, salary,
  count(gender) over (partition by gender) as totalGender,
  avg(salary) over (partition by gender) as AvgSalary
  from sqltutorial..employeedemographics dem
  join sqltutorial..employeesalary sal
  on dem.employeeid = sal.employeeid
  where salary > '45000'
  )

  select * from cte_employee