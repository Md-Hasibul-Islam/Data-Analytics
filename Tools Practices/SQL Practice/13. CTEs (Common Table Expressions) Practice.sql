-- CTEs (Common Table Expressions)

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT gender, AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender;


WITH CTE_Example AS
(
SELECT gender, AVG(salary) avg_salary, MAX(salary) max_salary, MIN(salary) min_salary, COUNT(salary) count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

WITH CTE_Example (Gender, AVG_Salary, MAX_salary, MIN_Salary, COUNT_Salary) AS
(
SELECT gender, AVG(salary) avg_salary, MAX(salary) max_salary, MIN(salary) min_salary, COUNT(salary) count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example
;

WITH CTE_Example AS
(
SELECT gender, AVG(salary) avg_salary, MAX(salary) max_salary, MIN(salary) min_salary, COUNT(salary) count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT AVG(avg_salary)
FROM CTE_Example
;


SELECT AVG(avg_salary)
FROM (
SELECT gender, AVG(salary) avg_salary, MAX(salary) max_salary, MIN(salary) min_salary, COUNT(salary) count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery
;
-- Though they both give same output but CTEs are professional and clean to use



SELECT AVG(avg_salary)
FROM CTE_Example;


WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 5000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
;

