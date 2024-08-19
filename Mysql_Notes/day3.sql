# select, use, from, where, delete table
# delete record/records
# insert records
# operators:- < >, in, not in, null, is null, not null.
# drop data base, drop table
# truncate,import table, export table, create table query, 
# create db, schema

# update, gui create table, gui, records insert, 
# alter :- table, name,column add, column, delete, position,  data type constraints 

# query


select * from tcs.students;


# update records


update tcs.students set student_name = 'Nitin Kumar'
where student_id = 3;



update tcs.students set student_name = 'Nitin Kumar'
where student_id = 3;



update tcs.students 
set student_name = 'Khiladi Akshay Kumar', 
roll_no = 109,
class = 7,
address = 'Greated Noida Extension'
where student_id = 2;



select * from tcs.students;



select * from tcs.employee_details;




/*
CREATE TABLE `tcs`.`employee_details` (
  `emp_id` INT NOT NULL,
  `emp_name` VARCHAR(30) NOT NULL,
  `dept` VARCHAR(20) NULL,
  `salary` VARCHAR(45) NULL,
  `designation` VARCHAR(45) NULL,
  `phone_number` VARCHAR(15) NULL,
  `address` VARCHAR(45) NULL,
  PRIMARY KEY (`emp_id`));
  */
  
  

/*
INSERT INTO `tcs`.`employee_details` (`emp_id`, `emp_name`, `dept`, `salary`, `designation`, `phone_number`, `address`) VALUES ('1', 'Karan', 'hr', '23456789', 'Hr', '9898787654', 'Noida');
INSERT INTO `tcs`.`employee_details` (`emp_id`, `emp_name`, `dept`, `salary`, `designation`, `phone_number`, `address`) VALUES ('2', 'Majid', 'It', '45678', 'Data Analyst', '9898787656', 'Greater Noida');
INSERT INTO `tcs`.`employee_details` (`emp_id`, `emp_name`, `dept`, `salary`, `designation`, `phone_number`, `address`) VALUES ('3', 'Jatin', 'Sales', '987654', 'BDA', '8787654543', 'Delhi');

*/





select * from tcs.emp_ka_details;



-- ALTER TABLE `tcs`.`details_of_emp` 
-- RENAME TO  `tcs`.`emp_details` ;



select * from tcs.emp_ka_details;



-- ALTER TABLE `tcs`.`emp_ka_details` 
-- CHANGE COLUMN `designation` `emp_designation` VARCHAR(45) NULL DEFAULT NULL
--  AFTER `dept`;



-- ALTER TABLE `tcs`.`emp_ka_details` 
-- ADD COLUMN `trip` VARCHAR(45) NULL AFTER `dept`;



-- ALTER TABLE `tcs`.`emp_ka_details` 
-- DROP COLUMN `phone_number`,
-- DROP COLUMN `trip`,
-- DROP INDEX `phone_number_UNIQUE` ;
-- ;



