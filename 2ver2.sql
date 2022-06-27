CREATE TABLE IF NOT EXISTs singer(
id SERIAL primary key ,
name VARCHAR(20) not null,
);

CREATE TABLE IF NOT EXISTS style_song(
id SERIAL PRIMARY KEY ,
name VARCHAR(20) NOT null
);

CREATE table IF NOT EXISTS album(
id SERIAL PRIMARY key ,
name VARCHAR(20) NOT NULL,
date INTEGER NOT null,
);

CREATE TABLE IF NOT EXISTS track(
id SERIAL PRIMARY KEY REFERENCES album_id,
name varchar(30) NOT null,

);

CREATE TABLE IF NOT EXISTS collections(
id SERIAL REFERENCES track_name_id NOT NULL,
name Varchar(30) ,
date_release INTEGER NOT NULL,
id_track VARCHAR(40)NOT NULL
);
CREATE TABLE IF NOT EXISTS album_singer(
id_singer INTEGER REFERENCES singer(id),
id_album INTEGER REFERENCES album(id)
);
CREATE TABLE IF NOT EXISTS collect_track(
 track_id INTEGER REFERENCES track(id),
 collections_id INTEGER REFERENCES collections(ID)
 );
DROP TABLE album_name CASCADE;

CREATE TABLE IF NOT EXISTS singer_style(
id_singer INTEGER REFERENCES singer(id),
id_style_song INTEGER REFERENCES style_song(id)
);

alter table track 
add lenhgt integer not null
;
alter table singer_style
add primary key(id_singer,id_style_song)
;
alter table collect_track 
add primary key (track_id,collections_id);

alter table album_singer 
add primary key (id_singer,id_album);

ALTER TABLE singer_style
add id integer;

ALTER TABLE singer_style
add PRIMARY KEY (Id);

ALTER TABLE singer_style
DROP constraint id_singer
;
