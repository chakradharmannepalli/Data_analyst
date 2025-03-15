-- SUB queries
SELECT *
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id
            FROM employee_salary
            WHERE dept_id=1);
            
SELECT first_name,salary,AVG(salary)
FROM employee_salary
GROUP BY first_name,salary;

SELECT first_name,salary,
		(SELECT AVG(salary)
        FROM employee_salary)
FROM employee_salary;

SELECT gender,AVG(age),MIN(age),MAX(age),COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM 
	(SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
    FROM employee_demographics
    GROUP BY gender) AS Aggeregate_table;
    
SELECT gender, AVG(`MAX(age)`) # Here we have to give backtik not single quotes backtik is under esc button
FROM
		(SELECT gender,
        AVG(age),
        MIN(age),
        MAX(age),
        COUNT(age)
        FROM employee_demographics
        GROUP BY gender) AS Aggregate_table
GROUP BY gender;

SELECT AVG(`MAX(age)`)
FROM
		(SELECT gender,AVG(age),MIN(age),MAX(age),COUNT(age)
        FROM employee_demographics
        GROUP BY gender) AS agg_table
;