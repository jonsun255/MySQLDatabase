-- selecting to see if the new cities are inserted correctly


select * 
from country_language
where country_code = 'NOR';

-- deleting the duplicates


delete from city
where id = 5000;

delete from city
where id = 5003;



-- Updating notodden and kongsberg to have right population


update city
set population = 29173
where name  = 'Kongsberg';

update city
set population = 9071
where name  = 'notodden';

-- updated city Notodden with a capital letter to start

update city
set name = 'Notodden'
where id = 5002;



-- deleting Saame from country language table

delete from 
country_language
where language = 'Saame';



--grouping countries with the most cities per district 

select country_code, district, count(*) as number_of_cities
from city
group by country_code, district
having count(*) > 5
order by number_of_cities;


-- checking the average population in norway

select AVG(population) as average_population
from city
where country_code = 'NOR';


--joining language, city and country table and showing the number of cities and languages in each country
--using distinct to avoid counting duplicate rows

SELECT 
	Capital_city.name as "Capital",
	country.name as "CountryName",
	count(distinct city.name) as "NumberOfCities",
	count(distinct country_language.language) as "NumberOfLanguages"
from country
join city as Capital_city on country.capital =Capital_city.id
join city on country.code = city.country_code 
join country_language on country.code = country_language.country_code
group by country."name", Capital_city.name;



-- retrieving countries which have higher population than the average country
select name, population
from country
where population >(
	select avg(population)
	from country
);


--summarizing the population of all the cities in Argentina

select sum(population)
from city
where country_code = 'ARG';



-- selecting the average life expectancy of the top gnp countries

select avg(life_expectancy)
from country
where gnp > 50000;


-- selecting the max life expectancy of countries with Constitutional Monarchy
select max (life_expectancy)
from country
where government_form = 'Constitutional Monarchy';

