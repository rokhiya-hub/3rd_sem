SELECT * FROM EMPLOYEE;
-- Find out who is earning 
-- the highest salary in the organization
SELECT id, name, salary FROM employee
WHERE salary = (SELECT MAX(salary) FROM employee);
-- Find out who is earning maximum salary
-- in thier department?
-- HR, Testing, Operations, SW
SELECT id, name, salary, department FROM 
employee 
WHERE department = 'HR'
ORDER BY salary DESC
FETCH FIRST 2 ROW ONLY;

SELECT id, name, salary, department
FROM employee
WHERE department = 'HR' AND salary = 
(SELECT MAX(salary) FROM employee
WHERE department = 'HR');


SELECT id, name, salary, department
FROM employee
WHERE department = 'Testing' AND salary = 
(SELECT MAX(salary) FROM employee
WHERE department = 'Testing');

SELECT id, name, salary, department
FROM employee
WHERE department = 'Operations' AND salary = 
(SELECT MAX(salary) FROM employee
WHERE department = 'Operations');

SELECT id, name, salary, department
FROM employee
WHERE department = 'SW' AND salary = 
(SELECT MAX(salary) FROM employee
WHERE department = 'SW');

-- MCMR Subquery
-- Multiple Columns and Multiple Rows
-- Mostly this type of query is used with IN / NOT IN
-- OPERATOR

-- Corelated Subquery
-- Window Functions (RANK())
SELECT id, name, salary, department
FROM employee
WHERE (department, salary) IN
(SELECT department, MAX(salary) AS max_salary
FROM employee
WHERE department IS NOT NULL
GROUP BY department);

-- Find out who is the youngest employee
-- in their department
SELECT id, name, department, age
FROM employee
WHERE (department, age) IN
(SELECT department, MIN(age) AS min_age
FROM employee
WHERE department IS NOT NULL
GROUP BY department);
-- MCMR
-- Product Sales Analysis
-- Co-related Subquery
-- A subquery which depends on one or more
-- columns from outer query
SELECT id, name, salary, department
FROM employee e WHERE salary = 
(SELECT MAX(salary) FROM employee 
WHERE department = e.department);

-- Co-related subquery to get youngest
-- from each department
SELECT id, name, age, department
FROM employee e WHERE age =
(SELECT MIN(age) FROM employee WHERE
department = e.department);




