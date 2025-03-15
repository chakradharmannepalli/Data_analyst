-- Triggers and Events
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id,first_name,last_name)
    VALUES(NEW.employee_id,NEW.first_name,NEW.last_name);
END $$
DELIMITER ;

INSERT INTO employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
VALUES(13,'Alex','Crig','Entertainment 720',1000000,NULL);

-- EVENTS

CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND # WE can also use minutes,days,weeks,months and years
DO
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age >= 60 
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%'; # This is to check the events
