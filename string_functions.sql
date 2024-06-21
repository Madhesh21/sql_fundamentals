CREATE TABLE EmployeeErrors (
    EmployeeID VARCHAR(50),
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

select * from employeeerrors

select employeeid, TRIM(employeeid) from EmployeeErrors

select employeeid, LTRIM(employeeid) from EmployeeErrors

select employeeid, RTRIM(employeeid) from EmployeeErrors

select lastname, REPLACE(lastname, '- Fired', '') as lastNameFixed from EmployeeErrors

select firstname, SUBSTRING(firstname, 1, 3) shortName from EmployeeErrors

select err.LastName ,SUBSTRING(err.LastName,1,3), dem.LastName, SUBSTRING(dem.LastName,1,3) from EmployeeErrors err
join EmployeeDemographics dem 
  on SUBSTRING(err.LastName,1,3) = SUBSTRING(dem.LastName,1,3)

select firstname, LOWER(firstname) from EmployeeErrors

select firstname, upper(firstname) from EmployeeErrors






