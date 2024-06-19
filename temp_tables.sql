create table #temp_employee (
  employeeId int,
  jobTitle varchar(100),
  salary int
)

insert into #temp_employee values ('1001', 'HR', '50000')

insert into #temp_employee 
select * from sqltutorial..employeesalary

select * from #temp_employee

create table #temp_employee2(
 jobtitle varchar(100),
 employeesPerJob int,
 avgAge int,
 avgSalary int
 )

 insert into #temp_employee2
 select jobtitle, count(jobtitle), avg(age), avg(salary)
 from sqltutorial..employeedemographics emp 
 join sqltutorial..employeesalary sal 
 on emp.employeeid = sal.employeeid
 group by jobtitle

 select * from #temp_employee2

 

