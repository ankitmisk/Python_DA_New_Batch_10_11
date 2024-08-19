-- agg func, group by, having, where clause, views
-- -- joins,union, union all funct, sp,sub queries


-- min,max,sum,count,avg,variance, std


select std(population) as SD from world.country;

select variance(population) as vr from world.country;




select * from world.country;


# without group by

select continent,sum(population) from world.country
group by continent;



select continent,sum(population)  as "Total Population"
from world.country
group by continent;


# single group multiple single/multiple aggregration

select continent,sum(population)  as "Total Population",
avg(population) `Average Population`,
min(population) as Minumum_Population,
max(population) 'Maximum Population',
count(population) as `Country Count`
from world.country
group by continent;


# multi group multi agg with column

select * from world.country;



select continent,region,
avg(lifeexpectancy) as "AVG LIfe",
sum(population) as "Total Popu",
avg(population) as "Avg Popu",
min(lifeexpectancy) as "Min Life"
from world.country
group by continent,region;








select continent,region,
avg(lifeexpectancy) as "AVG LIfe",
sum(population) as "Total Popu",
avg(population) as "Avg Popu",
min(lifeexpectancy) as "Min Life"
from world.country
group by continent,region
order by sum(population) desc;










select continent,region,
avg(lifeexpectancy) as "AVG LIfe",
sum(population) as "Total Popu",
avg(population) as "Avg Popu",
min(lifeexpectancy) as "Min Life"
from world.country
group by continent,region
order by sum(population) desc, avg(lifeexpectancy) desc;







select continent,region,
avg(lifeexpectancy) as "AVG LIfe",
sum(population) as "Total Popu",
avg(population) as "Avg Popu",
min(lifeexpectancy) as "Min Life"
from world.country
group by continent,region
order by sum(population) desc, avg(lifeexpectancy) desc
limit 5;







# having clause

select continent, sum(population) as "Total Population"
from world.country
group by continent;


# where clause does not works with group by

select continent, sum(population) as "Total Population"
from world.country
group by continent
where sum(population)>=700000000;







select continent, sum(population) as "Total Population"
from world.country
group by continent
having sum(population)>=450000000;






select continent, sum(population) as "Total Population"
from world.country where continent in ('europe','africa')
group by continent;