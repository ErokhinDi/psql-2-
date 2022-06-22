CREATE TABLE IF NOT EXISTs singer(
id SERIAL primary key ,
name VARCHAR(20) not null,
);

CREATE TABLE IF NOT EXISTS style_song(
id SERIAL PRIMARY KEY ,
name VARCHAR(20) NOT null
);

CREATE table IF NOT EXISTS album(
id SERIAL PRIMARY KEY,
name VARCHAR(20) NOT NULL,
date INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track(
id SERIAL PRIMARY KEY REFERENCES album_id,
name varchar(30) NOT NULL
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

