-- like, limit,order by, agg func, group by, having, where clause, views
-- joins, funct, sp,sub queries


# like


select * from world.country;


select * from world.country 
where name like 's%';




select * from world.country 
where name like 'indi%';




select * from world.country 
where name like '%ies';



select * from world.country
where continent like '___i__';


select * from world.country
where name like 'E_y%';






# limit

select * from world.country
where population >= 100000000;


select count(*) from world.country
where population >= 100000000;

select * from world.country
where continent like '[a%z]%';




# order by

select * from world.country
where population >= 100000000
order by population;



select * from world.country
where population >= 100000000
order by population asc;

desc world.country;

select * from world.country
where population >= 100000000
order by population desc;


# limit
select * from world.country
where population >= 100000000
order by population desc;




select * from world.country
where population >= 100000000
order by population desc
limit 3;



select * from world.country
where population >= 100000000
order by population desc
limit 3;




select * from world.country
where population >= 100000000
order by population
limit 3;




# 
select * from world.country where 
continent ='Europe' and 
population <=1000000 and 
lifeexpectancy >60
order by lifeexpectancy desc
limit 5;


# agg func

-- count,sum,average,min,max,std,var


select count(*) from world.country;


# as 

select count(*) as Total_Rows from world.country;


select count(*) Total_with_Rows from world.country;



select name as Country_Name, 
population  as country_population from world.country;


select count(name) as Total_data from world.country;


select count(name) as Total data from world.country;


select name Country_Name, 
population country_population from world.country;




select count(name) as "Total data" from world.country;


select count(name) 'Total data' from world.country;



select count(name)  `Total data` from world.country;


select count('kanpur') as "Total data" from world.country;


select count(kanpur) as "Total data" from world.country;




select min(population) as "Min Popu" from world.country;



select max(population) as "Max Popu" from world.country;



select avg(population) as "Avg Popu" from world.country;