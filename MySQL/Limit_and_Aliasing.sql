-- LIMIT and Aliasing
SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT *
FROM employee_demographics
LIMIT 3; # Here LIMIT is going to take only first 3 names coloums

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2,1;# Here it is going to take after two

-- Aliasing
# Aliasing is used for changing name for example i am giving gender as gen now we can call gender by using gen
SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40;

SELECT gender,AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age>40;

# Here without giving as we can change it 
SELECT gender,AVG(age) avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age>40;