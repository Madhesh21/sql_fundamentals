/* WHERE statement
   =,<,>,<>,AND,OR,LIKE,IS NULL, IS NOTNULL, IN
*/

select * from  SQLTutorial.dbo.EmployeeDemographics where gender = 'male' 

select * from  SQLTutorial.dbo.EmployeeDemographics where age < 30 

select * from  SQLTutorial.dbo.EmployeeSalary where salary > 45000 

select * from  SQLTutorial.dbo.EmployeeDemographics where age > 31 and gender = 'female'

select * from  SQLTutorial.dbo.EmployeeDemoGraphics where gender = 'male' or age > 34 

select * from  SQLTutorial.dbo.EmployeeDemographics where firstname like '%m'

select employeeid, firstname from  SQLTutorial.dbo.EmployeeDemographics where age is not null 

select * from  SQLTutorial.dbo.EmployeeSalary where jobtitle in('salesman','accountant')






