-- JOINS
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- Inner join only joins same values on both tables
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id;
    
SELECT dem.employee_id,age,occupation
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
-- Outer join has two types left outer join (or) Left join , Right outer join (or) Right join
-- Left join only gives the vales that are same but the in right join if the same value is not present then it will give null in that place
SELECT *
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal # We can use Left outer join also
	ON dem.employee_id=sal.employee_id;
    
SELECT *
FROM employee_demographics dem
LEFT OUTER JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
SELECT *
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id;
    
SELECT *
FROM employee_demographics dem
RIGHT OUTER JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id;
    
-- SELF JOIN
SELECT *
FROM employee_salary AS emp1
JOIN employee_salary AS emp2
	ON emp1.employee_id=emp2.employee_id;
    
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id+1=emp2.employee_id;
    
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS lat_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id+1=emp2.employee_id;
    
-- Joining multiple tables together
SELECT *
FROM parks_departments;

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id=pd.department_id;