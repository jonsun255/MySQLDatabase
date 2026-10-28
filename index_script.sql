
create index idx_city_district
on city(district);

explain
select *
from city
where district = 'Gelderland'
