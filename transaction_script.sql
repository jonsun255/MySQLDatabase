begin;

--Transferring population between trondheim and stavanger
update city
set population = population + 5000
where id = 2810;

select *
from city
where country_code = 'NOR';

update city
set population = population - 5000
where id = 2809;

select *
from city
where country_code = 'NOR';

commit;