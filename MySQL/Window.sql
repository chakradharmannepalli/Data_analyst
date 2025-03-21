-- WINDOW functions
SELECT gender,AVG(salary) avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender;

SELECT gender,AVG(salary) OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.first_name,dem.last_name,gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.first_name,dem.last_name,SUM(salary) OVER (PARTITION BY gender) AS ROlling_table
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;

SELECT dem.first_name,dem.last_name,salary,SUM(salary) OVER (PARTITION BY gender ORDER BY dem.employee_id) ROlling_table
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,ROW_NUMBER() OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,ROW_NUMBER() OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS Row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS Dense_rank_num
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;