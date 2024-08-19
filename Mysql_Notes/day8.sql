# union and union all
# functions

select * from joins_database.mera_emp;

select * from joins_database.emp_details_tech;








select * from joins_database.emp_details_tech
union
select * from joins_database.mera_emp;




select * from joins_database.emp_details_tech
union all
select * from joins_database.mera_emp;


use joins_database;


USE `joins_database`;
DROP function IF EXISTS `Sandeep_Greet`;

DELIMITER $$
USE `joins_database`$$
CREATE FUNCTION `Sandeep_Greet`() 
RETURNS varchar(20)
READS SQL DATA
BEGIN
RETURN 'Hello Buddy!!';
END$$

DELIMITER ;

