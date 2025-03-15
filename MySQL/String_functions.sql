-- String functions
SELECT LENGTH('Skyfall');

SELECT first_name,LENGTH(first_name)
FROM employee_demographics;

SELECT first_name,LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');

SELECT first_name,UPPER(first_name)
FROM employee_demographics;

SELECT LOWER('SKY');

SELECT first_name,LOWER(first_name)
FROM employee_demographics;

-- Trim will remove the white spaces
SELECT TRIM('         sky    ');
SELECT LTRIM('        sky     ');#Here Ltrim is used to remove the white spaces on left side
SELECT RTRIM('              sky      ');# Rtrim removes the white space from right side

SELECT first_name,
LEFT(first_name,4), # Here it will first 4 letters from left
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- REPLACE
SELECT first_name,REPLACE(first_name,'a','z')
FROM employee_demographics;

SELECT LOCATE('x','Alexander');

SELECT first_name,LOCATE('An',first_name)
FROM employee_demographics;

# CONCAT will combine two columns into one columns
SELECT first_name,last_name,
CONCAT(first_name,last_name)
FROM employee_demographics;

SELECT first_name,last_name,
CONCAT(first_name,'  ',last_name) AS  Full_name
FROM employee_demographics;