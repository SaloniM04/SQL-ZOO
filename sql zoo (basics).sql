


-----------------------------------------------SQL ZOO (SELECT BASICS)------------------------------------------------------------------------------

--1.The example uses a WHERE clause to show the population of 'France'. Note that strings should be in 'single quotes';
--Modify it to show the population of Germany.

select population from world 
where name='France'

--2.Checking a list The word IN allows us to check if an item is in a list. 
--The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'.
--Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

select name, population from world
where name in ('Sweden', 'Norway', 'Denmark')

--3. Which countries are not too small and not too big?
--BETWEEN allows range checking (range specified is inclusive of boundary values). 
--The example below shows countries with an area of 250,000-300,000 sq. km. 
--Modify it to show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

-----------------------------------------SQL ZOO (SELECT FROM WORLD TUTORIAL)------------------------------------------------------------------------

--1. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name FROM world
WHERE population = 200000000

--2. Give the name and the per capita GDP for those countries with a population of at least 200 million.

select name, gdp/population from world
where population>=200000000

--3. Show the name and population in millions for the countries of the continent 'South America'. 
--Divide the population by 1000000 to get population in millions.

select name, population/1000000 from world 
where continent ='South America'

--4. Show the name and population for France, Germany, Italy

select name, population from world
where name in ('Germany', 'France', 'Italy')

--5. Show the countries which have a name that includes the word 'United'.

select name from world
where name ='%united%'

--6. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million.
--Show the countries that are big by area or big by population. Show name, population and area.

select name,population,area from world
where area>3000000 or population>250000000

--7. Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. 
--Use the ROUND function to show the values to two decimal places.
--For Americas show population in millions and GDP in billions both to 2 decimal places.

select name, round(population/1000000,2) , round(gdp/1000000000,2) from world
where continent='South America'

--8. Show the name and capital where the name and the capital have the same number of characters.

select name, capital from world
where len(name)=len(capital)

--9.Show the name and the capital where the first letters of each match. Don't include countries where the 
--name and the capital are the same word. 

select name, capital from world
where left(name,1)<> left(capital,1)

--10. Find the country that has all the vowels and no spaces in its name.

select name from world
where name like '% %' and name like'%a%' and name like'%e%' and name like '%i%' and name like '%o%' and name like '%u%'.

--11.Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros).
--Round this value to the nearest 1000.

select name, round(gdp/population,-3) from world
where gdp>=1000000000000