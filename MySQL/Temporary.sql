-- Temparory tables
CREATE TEMPORARY TABLE temp_table
(first_name VARCHAR(50),
last_name VARCHAR(50),
favourite_movie VARCHAR(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Sachin','Tendulkar','Cricket');

SELECT *
FROM temp_table;

CREATE TEMPORARY TABLE salary_over_50000
SELECT *
FROM employee_salary
WHERE salary>=50000;

SELECT *
FROM salary_over_50000;

CREATE TEMPORARY TABLE ls
LIKE employee_demographics;

SELECT*
FROM ls;

INSERT ls
SELECT *
FROM employee_demographics;

SELECT *
FROM ls;