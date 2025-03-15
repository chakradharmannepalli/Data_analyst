-- WHERE CLAUSE
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_salary
WHERE first_name='Leslie'
;

SELECT *
FROM employee_salary
WHERE salary>50000
;

SELECT *
FROM employee_salary
WHERE salary>=50000
;

SELECT *
FROM employee_salary
WHERE salary<50000
;

SELECT *
FROM employee_salary
WHERE salary<=50000
;

SELECT *
FROM employee_demographics
WHERE gender='Female'
;

SELECT *
FROM employee_demographics
WHERE gender != 'Female'
;

SELECT *
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

-- AND OR NOT -- Logical operators
SELECT *
FROM employee_demographics
WHERE birth_date>'1985-01-01'
AND gender='male'
;

SELECT *
FROM employee_demographics
WHERE birth_date>'1985-01-01'
OR gender='male'
;

SELECT *
FROM employee_demographics
WHERE birth_date>'1985-01-01'
OR NOT gender='male'
;

SELECT *
FROM employee_demographics
WHERE (first_name='Leslie' AND age= 44) OR age>55;

-- LIKE Statement
-- % and _
# % means everthing if you jer% after jer it's going to print everything

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a%'
;

# _ if i have to print Ann so i have to give a__ a and two under scores how many characters that many underscores we can combine _ and % a___%
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___'
;

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a___%'
;

SELECT *
FROM employee_demographics
WHERE birth_date LIKE '1989%'
;
