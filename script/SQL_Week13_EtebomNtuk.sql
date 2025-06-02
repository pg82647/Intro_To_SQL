
/* Create EmployeeDemographics table */
Create Table EmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

/* Create EmployeeSalary table */
Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
)



/* Insert records into EmployeeDemographics table */
Insert into EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

/* Insert records into EmployeeSalary table */
Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)

/* Select all columns and rows from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics;

/* Select only first name column from EmployeeDemographics table  */
SELECT FirstName
FROM EmployeeDemographics;

/* Select first name and last name columns from EmployeeDemographics table  */
SELECT FirstName, LastName
FROM EmployeeDemographics;

/* Select first 5 rows of all columns from  EmployeeDemographics table */
SELECT TOP 5 *
FROM EmployeeDemographics;

/* Select unique employee IDs from EmployeeDemographics table */
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics;

/* Select unique gender from EmployeeDemographics table */
SELECT DISTINCT(Gender)
FROM EmployeeDemographics;

/* Get number of last names from EmployeeDemographics table */
SELECT COUNT(LastName)
FROM EmployeeDemographics;

/* Alias number of last names from EmployeeDemographics table as LastNameCount */
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics;

/* Select all rows and columns from EmployeeSalary table */
SELECT *
FROM EmployeeSalary;

/* Get the maximum value in the salary column from EmployeeSalary table */
SELECT MAX(Salary)
FROM EmployeeSalary;

/* Get the minimum value in the salary column from EmployeeSalary table */
SELECT MIN(Salary)
FROM EmployeeSalary;

/* Get the mean salary from EmployeeSalary table */
SELECT AVG(Salary)
FROM EmployeeSalary;

/* Get all records from EmployeeSalary table when operating from a different database than SQLTutorial */
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary;

/* Select all columns but only rows where the first name is Jim from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim';

/* Select all columns but only rows where the first name is not Jim from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim';

/* Select all columns but only rows where age is greater than 30 from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE Age > 30;

/* Select all columns but only rows where age is greater than or equal to 30 from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

/* Select all columns but only rows where age is less than 32 from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE Age < 32;

/* Get all columns but only rows where age is less than or equal to 32 from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32;

/* Get all columns but only rows where age is less than or equal to 32, and gender is male from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male';

/* Select all columns but only rows where age is less than or equal to 32, or gender is male from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male';

/* Select all columns but only rows where last name begins with letter S from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%';

/* Select all columns but only rows where last name contains letter S EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%';

/* Select all columns but only rows where last name begins with letter S 
but also contains letter o EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%';

/* Select all columns but only rows where last name begins with letter S 
and contains letters ott EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%';

/* Select all columns but only rows where last name begins with letter S, 
contains letters ott, and also contains letter c EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%c%';

/* Select all columns but only rows where last name begins with letter S, 
contains letter c, followed by letters ott EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%c%ott%';

/* Select all columns and rows where first name is missing from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NULL;

/* Get all columns and rows where first name is not missing from EmployeeDemographics table */
SELECT *
FROM EmployeeDemographics
WHERE FirstName IS NOT NULL;

/* Select all columns and rows where first name is Jim and Michael from EmployeeDemographics table  */
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael');

/* Group all rows and gender column only from EmployeeDemographics table by gender */
SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender;

/* Group all rows, gender column, and the number of occurences of each unique gender from EmployeeDemographics table by gender */
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender;

/* Group all rows, gender and age columns, and the number of occurences of each unique gender from EmployeeDemographics table by gender and age */
SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age;

/* Group all rows, gender column, and the number of occurences of each unique gender from EmployeeDemographics table by gender */
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender;

/* Group all rows, gender column, and the number of occurences of each unique gender aliased as CountGender
from EmployeeDemographics table by gender, ordered in ascending order by CountGender */
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender;

/* Group all rows, gender column, and the number of occurences of each unique gender aliased as CountGender
from EmployeeDemographics table by gender, ordered in descending order by CountGender */
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC;

/* Group all rows, gender column, and the number of occurences of each unique gender aliased as CountGender
from EmployeeDemographics table by gender, ordered in descending order by Gender */
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender DESC;

/* Order all rows from EmployeeDemographics table in ascending order by age */
SELECT *
FROM EmployeeDemographics
ORDER BY Age;

/* Order all rows from EmployeeDemographics table in descending order by age */
SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC;

/* Order all rows from EmployeeDemographics table 
in ascending order by both age and gender */
SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender;

/* Order all rows from EmployeeDemographics table 
in ascending order by age, and in descending order by gender */
SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC;

/* Order all rows from EmployeeDemographics table 
in descending order by both age and gender */
SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC;

/* Order all rows from EmployeeDemographics table in descending order by both age and gender 
but by referencing the column numbers of both age and gender columns*/
SELECT *
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC;
