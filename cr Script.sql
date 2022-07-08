CREATE TABLE IF NOT EXISTs singer(
id SERIAL primary key ,
name VARCHAR(20) not null,
album VARCHAR(30) not null,
id_style_song INTEGER references style_song(id) not null 
);

CREATE TABLE IF NOT EXISTS style_song(
id SERIAL PRIMARY KEY ,
name VARCHAR(20) NOT null

);

CREATE table IF NOT EXISTS album_name (
id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL,
date INTEGER NOT null,
id_singer INTEGER references singer(id) not null
);

create table if not exists track(
id SERIAL primary key references id_album_name,
name varchar(30) not null,
track_name_id varchar(30) not null
);
create table if not exists collections(
id SERIAL references track_name_id not null,
name Varchar(30) ,
date_release INTEGER not null,
id_track VARCHAR(40)not NULL
);
create table album_singer(
id_singer INTEGER REFERENCES singer(id),
id_album INTEGER REFERENCES album_name(id),
constraint pk primary key (id_singer, id_album)
);
create table if not exists coklect_track(
 track_id INTEGER references track(id),
 collection_id INTEGER references collection(ID)
 );