# CRUD
# C:- Create 
#R:- Read:- Select
# U:- Update
# D:- Delete

# Insert



# Views:- virtual table

create or replace view world.population_pivot_view as 
select continent,region,
avg(lifeexpectancy) as "AVG LIfe"

-- sum(population) as "Total Popu",
-- avg(population) as "Avg Popu",
-- min(lifeexpectancy) as "Min Life"

from world.country
group by continent,region
order by sum(population) desc, avg(lifeexpectancy) desc
limit 5;




select * from world.population_pivot_view;




select * from world.`population ka view`;


# drop statement
drop view world.population_pivot_view;






# joins 

-- inner join
-- left join  left outer join
-- right join  right outer join
-- cross join 
-- self join
-- full outer join



# union or union all

select * from joins_database.emp_details_tech;


select * from joins_database.salary_details_tech;



select *  from joins_database.emp_details_tech as e
inner join joins_database.salary_details_tech as s
on
e.Salary_id = s.Salary_id;







