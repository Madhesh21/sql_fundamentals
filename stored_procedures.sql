create procedure test 
as
select * from EmployeeDemographics

exec test


CREATE PROCEDURE tempEmployee
    @JobTitle nvarchar(100)
AS 
BEGIN
    -- Create a temporary table to hold the results
    CREATE TABLE #temp_employee (
        JobTitle nvarchar(100),
        EmployeesPerJob int,
        AvgAge int,
        AvgSalary int
    );

    -- Insert the aggregated data into the temporary table
    INSERT INTO #temp_employee
    SELECT 
        JobTitle, 
        COUNT(JobTitle) AS EmployeesPerJob, 
        AVG(Age) AS AvgAge, 
        AVG(Salary) AS AvgSalary
    FROM 
        SQLTutorial..EmployeeDemographics emp
    JOIN 
        SQLTutorial..EmployeeSalary sal
        ON emp.EmployeeID = sal.EmployeeID
    WHERE 
        JobTitle = @JobTitle
    GROUP BY 
        JobTitle;

    -- Select the data from the temporary table
    SELECT * FROM #temp_employee;

END;
GO

-- Execute the procedure with the parameter
EXEC tempEmployee @JobTitle = 'Salesman';
exec tempEmployee @Jobtitle = 'Accountant'


