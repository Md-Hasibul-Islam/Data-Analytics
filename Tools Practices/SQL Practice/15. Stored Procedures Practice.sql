-- Stored Procedures

SELECT * 
FROM employee_salary
WHERE salary >= 50000;


CREATE PROCEDURE large_salaries()
SELECT * 
FROM employee_salary
WHERE salary >= 50000;
--  not best practice of use

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries2()
BEGIN
	SELECT * 
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT * 
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL large_salaries2();



DELIMITER $$
CREATE PROCEDURE large_salaries3(p_employee_id INT) 	-- parameter in bracket
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = p_employee_id 					-- matching with parameter
    ;
END $$
DELIMITER ;

CALL large_salaries3(1);

