-- CTE
WITH CTE_Example AS
(
SELECT gender,AVG(salary) Avg_salary,MIN(salary) Min_salary,MAX(salary) Max_salary,COUNT(salary) Count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example;

WITH CTE_Example AS
(
SELECT gender,AVG(salary) Avg_salary,MIN(salary) Min_salary, MAX(salary) Max_salary,COUNT(salary) Count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender
)
SELECT AVG(Avg_salary)
FROM CTE_Example
;

WITH CTE_Example(Gender,AVG_sal,MIN_sal,MAX_sal,COUNT_sal) AS
(
SELECT gender,AVG(salary),MIN(salary),MAX(salary),COUNT(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_Example;

SELECT AVG(avg_salary)
FROM(
SELECT gender,AVG(salary) avg_salary,MIN(salary) Min_salary, MAX(salary) Max_salary,COUNT(salary) Count_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender
)example_subquery
;

WITH CTE_Example AS
(
SELECT employee_id,gender,birth_date
FROM employee_demographics
WHERE birth_date>'1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id,salary
FROM employee_salary
WHERE salary>50000
)
SELECT *
FROM CTE_Example 
JOIN CTE_EXample2
	ON CTE_Example.employee_id=CTE_EXample2.employee_id;