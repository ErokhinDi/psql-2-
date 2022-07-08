select name ,date_realese  from album
 where  date_realese ='2018-12-1';
---не работает

select name, max(duration) FROM track order by name ;
----не понимаю как вывести 1 значение максимальное

SELECT name, duration FROM track
	ORDER BY duration DESC
	LIMIT 1;


select name 
from track
where duration >=210
;


select name  from collections
where release between '2018-01-01' and '2022-01-01' ;


select name from singer 
where name  not like '% %';

select name from track
where name like 'my%';
