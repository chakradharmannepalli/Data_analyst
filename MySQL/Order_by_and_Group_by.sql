-- GROUP BY
SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation
FROM employee_salary
GROUP BY occupation;

SELECT occupation,salary
FROM employee_salary
GROUP BY occupation,salary;

SELECT gender,AVG(age),MAX(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender,AVG(age),MAX(age),MIN(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

-- ORDER BY gives the result in ascending order (or) descending order by default it is going to be ascending order
SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender;

SELECT *
FROM employee_demographics
ORDER BY gender,age;

SELECT *
FROM employee_demographics
ORDER BY gender,age DESC;

# ORDER BY using columns numbers Here i am take gender(5),age(4)
SELECT *
FROM employee_demographics
ORDER BY 5,4
;