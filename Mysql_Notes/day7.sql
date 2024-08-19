# joins 

-- inner join
-- left join  left outer join
-- right join  right outer join
-- cross join 
-- self join
-- full outer join



# union or union all



select * from joins_database.emp_details_tech;

select * from  joins_database.salary_details_tech;



select * from joins_database.emp_details_tech
inner join joins_database.salary_details_tech
on
joins_database.emp_details_tech.Salary_id= joins_database.salary_details_tech.Salary_id;





select * from joins_database.emp_details_tech as e
inner join joins_database.salary_details_tech as s
on
e.Salary_id= s.Salary_id;



select name,dept,salary from joins_database.emp_details_tech as e
inner join joins_database.salary_details_tech as s
on
e.Salary_id= s.Salary_id;





select e.name,e.dept,s.salary 
from joins_database.emp_details_tech as e
inner join joins_database.salary_details_tech as s
on
e.Salary_id= s.Salary_id;





select e.name as Emp_Name,
e.dept as Dept,
s.salary as Emp_Salary
from joins_database.emp_details_tech as e
inner join joins_database.salary_details_tech as s
on
e.Salary_id= s.Salary_id;






select e.Eid,e.name as Emp_Name,s.Salary_id,
e.dept as Dept,
s.salary as Emp_Salary
from joins_database.emp_details_tech as e
join joins_database.salary_details_tech as s
on
e.Salary_id= s.Salary_id;






select e.Eid,e.name as Emp_Name,s.Salary_id,
e.dept as Dept,
s.salary as Emp_Salary
from joins_database.emp_details_tech as e
left join joins_database.salary_details_tech as s
on
e.Salary_id= s.Salary_id;






select * from joins_database.emp_details_tech as left_table
left join joins_database.salary_details_tech as right_table
on 
left_table.Salary_id = right_table.Salary_id;


select left_table.name,right_table.Salary from joins_database.emp_details_tech as left_table
left join joins_database.salary_details_tech as right_table
on 
left_table.Salary_id = right_table.Salary_id;



select left_table.name,right_table.Salary from joins_database.emp_details_tech as left_table
left outer join joins_database.salary_details_tech as right_table
on 
left_table.Salary_id = right_table.Salary_id;







select * from joins_database.emp_details_tech as left_table
left outer join joins_database.salary_details_tech as right_table
on 
left_table.Salary_id = right_table.Salary_id;







select * from joins_database.emp_details_tech as left_table
right join joins_database.salary_details_tech as right_table
on 
left_table.Salary_id = right_table.Salary_id;




select * from joins_database.emp_details_tech as left_table
right outer join joins_database.salary_details_tech as right_table
on
left_table.Salary_id = right_table.Salary_id;






# cross join


select * from joins_database.emp_details_tech as l
cross join joins_database.salary_details_tech as r;



select * from joins_database.emp_details_tech as l
cross join joins_database.salary_details_tech as r
on 
l.Salary_id = r.Salary_id;




select * from joins_database.emp_details_tech as l
cross join joins_database.salary_details_tech as r
where
l.Salary_id = r.Salary_id;



# inner join:- join
# left join:- left outer join
# right join:- right outer join
# cross join :- cross join

# self join



select * from joins_database.emp_details_tech as l,
joins_database.emp_details_tech as r
where
l.dept = r.dept;


