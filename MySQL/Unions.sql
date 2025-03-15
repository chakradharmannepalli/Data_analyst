-- UNIONS
SELECT first_name,last_name
FROM employee_demographics
UNION #UNION will work as distinct only give unique values
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION ALL #It will print all the values
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name,'Old Man' AS Lable
FROM employee_demographics
WHERE age>40 AND gender='Male'
UNION
SELECT first_name,last_name,'Old Lady' AS Lable
FROM employee_demographics
WHERE age>40 AND gender='Female'
UNION
SELECT first_name,last_name,'Highly Paid' AS Lable
FROM employee_salary
WHERE salary>75000;

SELECT first_name,last_name,'Old Man' AS Lable
FROM employee_demographics
WHERE age>40 AND gender='Male'
UNION
SELECT first_name,last_name,'Old Lady' AS Lable
FROM employee_demographics
WHERE age>40 AND gender='Female'
UNION
SELECT first_name,last_name,'Highly paid' AS Lable
FROM employee_salary
WHERE salary>75000
ORDER BY first_name,last_name;