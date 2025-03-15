# DISTINCT only gives unique Values
SELECT *
FROM employee_demographics;

SELECT DISTINCT first_name
FROM employee_demographics;

SELECT gender
FROM employee_demographics;

SELECT DISTINCT gender
FROM employee_demographics;

SELECT DISTINCT first_name,gender
FROM employee_demographics;

