
-- Creating a role for reading only cities
create role city_reader;

grant select
on city
to city_reader;

-- Creating a role for language specialists, to select, insert and update new languages
create role language_specialist;

grant select, insert, update
on country_language
to language_specialist;


