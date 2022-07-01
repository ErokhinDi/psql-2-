create table if not exists genres(
id SERIAL primary key,
name Varchar (30),
id_singer integer references singer(id)
);
--внешний ключ не работает как добавить?

alter table genres 
add column id_singer integer references singer;

create table if not exists singer(
id SERIAL primary key,
id_album integer,
name varchar (20),
id_genres integer references genres(id)
);
 
create table album(
id serial primary key,
name varchar (40),
date_realese date,
id_singer integer references singer(id)
);

create table track(
id serial primary key,
name varchar(30),
duration integer,
id_album integer references album(id)
);
create table collections(
name varchar (40),
release date,
id_track integer references track(id)
);
alter table collections 
add id serial primary key
;
CREATE TABLE IF NOT EXISTS album_singer(
id_singer INTEGER REFERENCES singer(id),
id_album INTEGER REFERENCES album(id)
);
CREATE TABLE IF NOT EXISTS collect_track(
id_track INTEGER REFERENCES track(id),
id_collections INTEGER REFERENCES collections(Id)
);

CREATE TABLE IF NOT EXISTS singer_genres(
id_singer INTEGER REFERENCES singer(id),
id_genres INTEGER REFERENCES genres(id)
);

insert into singer( name, album)
values('eminem','my') ,('metallica','summer'),('scooter','mom'),('edshiran','june'),('bobmarley','kek'),('madonna','git'),('justintimberlake','destination'),('depechemode','rf');

insert into album (name,DATE)
values ('my',2010),('summer',2011),('june',1985),('mom',2022),('kek',2018),('destination',2020),('git',1999);

insert into genres (name)
values ('rock'), ('rap'), ('jazz'),('pop'),('vocal');

insert into collections (name,date_release,id_track)
values ('summer mix',10.1987,1),('mix deep',1985),('rock ballads',2020),('my rap',2019),('all music',2017),('sobranie',2016),('earth song',2018),('love mix',2015);
---ОШИБКА: столбец "id_track" в таблице "collections" не существует
insert into track(name,duration)
values('deep',90),('troll',60),('ork',20),('may',15),('dina',45),('coack',39),('tiger',77),('fire',66),('ocean',47),('beach',55),('moscow',33),('robot di',58),('itttt',39),('omg',69)
,('madein china',78),('viking',31),('bone',61),('blue rain',22),('gold',38);
---ОШИБКА: столбец "duration" в таблице "track" не существует