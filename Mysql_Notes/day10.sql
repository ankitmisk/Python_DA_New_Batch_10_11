select now();

/*
When you create a stored function, you must declare either that it is deterministic or that it does not modify data. Otherwise, 
it may be unsafe for data recovery or replication.

By default, for a CREATE FUNCTION statement to be accepted, at least one of DETERMINISTIC, NO SQL, 
or READS SQL DATA must be specified explicitly. Otherwise an error occurs:
*/

/*
Function:-
Block of code performs a specific task

takein data, process it return a result.
can reuse it many times.

function is a stored progra,have to pass parameter and return value.

stored procedure vs function:

function must to return some values.

function stored in physical database.

function should perform specific task.

to avoid repetibility of large scripits of code,

do not rewrite sql code, create function


func take input param, and return some value.

Two types func:-
system defined
user defined


some funct take input param and return some values.

select sqrt(25) = 5

some funct do not take param and return values


select now():- non parameterized func.

syntax of func:
delimiter defines function scope area like curly braces.

delimiter//
create function func_name(param dtype)

returns return_type
begin
.... sql query
end//
delimeter;


-- how to call func

select func_name(args)



ex:
delimiter//
create function greet()
returns varchar(20)
begin
    return 'Hello MYSQL';
end//
delimiter ;



important points:
must defined func name
funct takes only in, not in out or inout

datatype mentioned in returns

write code inside begin or end block
return is the last statements.

show function status where db = 'database name'


-- drop function func_name;





*/




Delimiter $$
create function greet()
returns varchar(20)
READS SQL DATA
DETERMINISTIC
begin
    return 'Hello MYSQL';
end $$
Delimiter ;

select greet() as 'Greet';


delimiter $$
create function hello(namee varchar(20))
returns varchar(50)
reads sql data
deterministic
begin
	return concat('Hello',' ',namee);
end $$
delimiter ;


select hello('Pawan');

select current_date();


select age('1990-1-10') as 'My age';

show function status where db = 'database name';

-- ------------------------------------------- 

show function status where db = 'sys';



show function status;

SELECT 
    routine_schema as "Database",
    routine_name
FROM 
    information_schema.routines;
    
    
-- some inbuilt functions;

select sqrt(25);

select lower('AMAN GUPTA');

select upper('Aman');

select pi();

select abs(-25);

select floor(24.5);

select ceil(24.6);

select mod(4,2);  -- modulus

select min((0));

select max((0));

select round(234.2345);

select time('2020-1-12 12:24:00'); 

select year('2023-08-27');

select month('2023-08-27');

select day('2023-08-27');

select week(date(now()));

select hour('2023-08-27 12:25:34');

select date('2023-08-27 12:25:34');

select second('2023-08-27 12:25:34');

select minute('2023-08-27 12:25:34');

select current_time();

select curtime();

select current_date();

select curdate();

select timestamp(); -- not working

select datetime(); -- not working

select current_timestamp();


select repeat('*',20);

select length(space(20));

select left('Mohan',2);

select right('Karan',2);

select sleep(4);



select user();

select now();



T

-- =====================================
CREATE DATABASE IF NOT EXISTS example_database;
USE example_database;


#Create a Table
CREATE TABLE IF NOT EXISTS example_table (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    age INT
);


# Example 1: Basic Function
DELIMITER //
CREATE FUNCTION greet() RETURNS VARCHAR(255)
reads sql data
deterministic
BEGIN
    RETURN 'Hello, World!';
END //
DELIMITER ;


select greet();


# Example 2: Function with Parameters

DELIMITER //
CREATE FUNCTION add_numbers(a INT, b INT) RETURNS INT
reads sql data
deterministic
BEGIN
    RETURN a + b;
END //
DELIMITER ;

select add_numbers(10,12);

# Example 3: Function with Default Parameter
-- DELIMITER //
-- CREATE FUNCTION multiply(a INT, b INT = 2) RETURNS INT
-- reads sql data
-- deterministic
-- BEGIN
--     RETURN a * b;
-- END //
-- DELIMITER ;


DELIMITER //
CREATE FUNCTION multiply(a INT, b INT) RETURNS INT
DETERMINISTIC
BEGIN
    -- If b is NULL, use default value of 2
    SET b = COALESCE(b, 2);
    RETURN a * b;
END //
DELIMITER ;

select multiply(12,10);

# Example 4: Function with Condition
DELIMITER //
CREATE FUNCTION is_even(num INT) RETURNS BOOLEAN
DETERMINISTIC
BEGIN
    RETURN num % 2 = 0;
END //
DELIMITER ;


select is_even(2);


# Example 5: Function with Local Variables
DELIMITER //
CREATE FUNCTION calculate_discount(price DECIMAL(10, 2)) RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE discount DECIMAL(10, 2);
    SET discount = price * 0.1; -- 10% discount
    RETURN price - discount;
END //
DELIMITER ;


select calculate_discount(10);



-- =================================================================
# STORED PROCEDURE
/*A stored procedure in MySQL is a named collection of SQL statements that are stored on the server for later execution. 
It encapsulates logic, promotes modularity and reusability, and can accept parameters*/

# Example 1: Basic Stored Procedure
DELIMITER //
CREATE PROCEDURE simple_procedure()
BEGIN
    SELECT 'Hello, World!' AS message;
END //
DELIMITER ;

call simple_procedure();

# Example 2: Stored Procedure with Parameters
DELIMITER //
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
    SELECT * FROM users WHERE id = user_id;
END //
DELIMITER ;

call get_user_by_id(12);




# Example 3: Stored Procedure with Output Paramete
DELIMITER //
CREATE PROCEDURE calculate_area(IN radius INT, OUT area DOUBLE)
BEGIN
    SET area = PI() * POW(radius, 2);
END //
DELIMITER ;


SET @radius_value = 5; -- Set the radius value
SET @area_result = 0;  -- Variable to store the result
CALL calculate_area(@radius_value, @area_result);
SELECT @area_result AS calculated_area;



# Example 4: Conditional Stored Procedure
DELIMITER //
CREATE PROCEDURE get_users_by_age(IN age INT)
BEGIN
    IF age > 0 THEN
        SELECT * FROM users WHERE user_age = age;
    ELSE
        SELECT 'Invalid age' AS message;
    END IF;
END //
DELIMITER ;



# Example 5: Loop in Stored Procedure
DELIMITER //
CREATE PROCEDURE display_numbers(IN count INT)
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= count DO
        SELECT i AS number;
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;












