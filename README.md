# Intro_To_SQL

The script in this rep performs various database tasks involving two tables: `EmployeeDemographics` and `EmployeeSalary`. 
Below is a summary of the tasks:

---  

### 1. **Table Creation:**

* Creates the `EmployeeDemographics` table with columns for `EmployeeID`, `FirstName`, `LastName`, `Age`, and `Gender`.
* Creates the `EmployeeSalary` table with columns for `EmployeeID`, `JobTitle`, and `Salary`.

---  

### 2. **Inserting Data:**

* Inserts multiple records into the `EmployeeDemographics` table with sample employee data.
* Inserts multiple records into the `EmployeeSalary` table with employee job titles and salaries.

---  

### 3. **Selecting Data (Basic Queries):**

* Selects all rows and columns from `EmployeeDemographics`.
* Selects specific columns (e.g., only `FirstName` or `FirstName` and `LastName`) from `EmployeeDemographics`.
* Selects the top 5 rows from `EmployeeDemographics`.
* Selects distinct values for `EmployeeID` and `Gender`.
* Counts the number of `LastName` entries in `EmployeeDemographics`.
* Aliases the count of `LastName` as `LastNameCount`.
* Selects all rows from `EmployeeSalary`.

---  

### 4. **Aggregating Data (Using Aggregate Functions):**

* Finds the maximum, minimum, and average salary from `EmployeeSalary`.

---  

### 5. **Selecting Data with Conditions (Filtering):**

* Filters `EmployeeDemographics` based on various conditions:

  * Selects employees with specific first names (e.g., Jim, Michael).
  * Selects employees based on age criteria (e.g., greater than, less than, equal to).
  * Combines multiple conditions using `AND`/`OR`.
  * Filters based on last name patterns using `LIKE`.
  * Selects records with `NULL` or `NOT NULL` values for `FirstName`.

---  

### 6. **Grouping and Aggregating Data:**

* Groups data by `Gender` and counts occurrences of each gender.
* Groups by both `Gender` and `Age` and counts occurrences for each combination.
* Filters groups by `Age > 31`.
* Orders groups by the count of `Gender` in ascending or descending order.

---  

### 7. **Ordering Data:**

* Orders the `EmployeeDemographics` table based on `Age` in both ascending and descending orders.
* Orders the table by `Age` and `Gender` in ascending or descending orders.
* Uses column numbers to order data in descending order by both `Age` and `Gender`.

---  

### 8. **Cross-Database Query:**

* Selects all records from the `EmployeeSalary` table in a different database (`SQLTutorial.dbo.EmployeeSalary`).  

---

The saved script demonstrates:

* Basic table creation and population.
* Basic and advanced queries (with conditions, aggregation, and grouping).
* Sorting and filtering data.
* Cross-database querying.  

