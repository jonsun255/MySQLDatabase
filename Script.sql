
-- here i am inserting a couple new norwegian cities, into the city table.

insert into city(id, name, country_code, district, population)
values (5004, 'Fredrikstad', 'NOR', 'Ostfold', 86243);

insert into city(id, name, country_code, district, population)
values (5005, 'Sarpsborg', 'NOR', 'Ostfold', 60000);


insert into city(id, name, country_code, district, population)
values (5006, 'Bodo', 'NOR', 'Nordland', 43504);

insert into city(id, name, country_code, district, population)
values (5007, 'Tromso', 'NOR', 'Troms', 79932);

-- Inserting NyNorsk and samisk to country language
insert into country_language (country_code, language, is_official, percentage)
values ('NOR', 'NyNorsk', true, 14);

insert into country_language (country_code, language, is_official, percentage)
values ('NOR', 'Samisk', true, 0.4);
