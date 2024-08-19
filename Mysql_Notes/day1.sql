# sql code
-- This is also a comment

/*eefjvberhjfer
grt
ger
h
trg
trh
yuj
*/

show DataBases;

show schemas;


use world;


show tables;

# records view 

select * from country;




# our database

create database TcS;



use tcs;

select * from employee;

-- *:- all columns

select name,salary from employee;




# create table with help of query

create table tcs.students 
(student_id int,
student_name text,
roll_no int,
class int,
address text,
phone_no text);

show tables;

select * from tcs.students;


# insert records

insert into tcs.students values
(1,"karan Verma",101,5,"Noida",9876543298),
(2,"Akshay Verma",102,6,"Gr Noida",9888543298),
(3,"Nitin Verma",103,7,"Noida",9876598298),
(4,"Ambani Sahab",104,8,"Delhi",986543298),
(5,"Gaurav Kumar",105,9,"Noida",8876543298);




select * from tcs.students;


use tcs;





















