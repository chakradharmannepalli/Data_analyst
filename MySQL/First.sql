SELECT *
FROM employee_demographics;

# When we are in another database like SYS
SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name
FROM employee_demographics;

SELECT first_name,last_name,birth_date
FROM employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
age+10
FROM employee_demographics;

#PEMDAS P for panrenthesis, E for exponential, M for multiplication, D for Division, A for Addition, S for Subtraction
SELECT first_name,
last_name,
birth_date,
age,
(age+10)*10
FROM employee_demographics;

SELECT first_name,
last_name,
birth_date,
age,
(age+10)*10 + 10
FROM parks_and_recreation.employee_demographics;