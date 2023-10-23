

--                                                   SQL ZOO QUESTIONS (SUM AND COUNT)

--1. Give the total GDP of Africa.

select sum(gdp) from world
where continent='Africa'

--2. How many countries have an area of at least 1000000

select count(*) from world
where area>=1000000

--3. What is the total population of ('Estonia', 'Latvia', 'Lithuania')

select sum(population) from world 
where name in ('estonia', 'latvia', 'lithuania')

--4. For each continent show the continent and number of countries.

select continent, count(*) from world
group by continent

--5.For each continent show the continent and number of countries with populations of at least 10 million.

select continent, count(*) from world
where population>=10000000
group by continent

--6. List the continents that have a total population of at least 100 million.

select continent from world
group by continent
having sum(population)>=100000000

