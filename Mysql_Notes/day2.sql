use world;


 #basic queries
 
--  where clause 
#<,>,<=,>=,and, or, in, not, null, not null

# delete record,records, drop table, db 





select * from country;

use tcs;

select * from students;


# without use



select * from world.country;

select * from tcs.students;


#create table world.students

# insert into tcs.employee



#  where clause 
#<,>,<=,>=,and, or, in, not, null, not null


desc world.country;



select * from world.country;

select continent,name,surfacearea,population from world.country;



# where clause:- filter records


select continent,name,surfacearea,population from world.country
where population >= 100000000;



select continent,name,surfacearea,population from world.country
where population <= 5000 and continent = "europe";



select continent,name,surfacearea,population,LifeExpectancy from world.country
where LifeExpectancy >=80;



select * from world.country
where name = 'India';



select * from world.country where indepyear is null;


select * from world.country 
where indepyear is null and LifeExpectancy is null and GNPOld is null and 
capital is null;



# or

select * from world.country 
where (continent = 'asia') or (SurfaceArea >= 5000000);






select * from world.country where indepyear is not null;


select * from world.country where IndepYear != 1919;

select * from world.country where IndepYear <> 1919;



select * from world.country where indepyear is not null;



#select * from world.country where Continent = 'asia','africa';
select * from world.country where Continent = 'asia'  and continent = 'africa';

select * from world.country where Continent in ('asia','africa') and Population>=100000000;



select * from world.country where Continent not in ('asia','africa') and Population>=100000000;




# tcs
#delete record, truncate records

select * from tcs.students;

delete from tcs.students;  # delete all records


delete from tcs.students where student_id = 4;

#where pk = value

# bulk delete records

truncate tcs.students;



# 

select * from tcs.students;


drop table tcs.students;




drop database tcs;



select * from world.country;









