CREATE TABLE IF NOT EXISTS Genre (
    genre_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
	);

CREATE TABLE IF NOT EXISTS Musician (
    musician_id SERIAL PRIMARY KEY,
	nickname VARCHAR(60) NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS Album (
    album_id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	t_name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER NOT NULL REFERENCES Album(album_id)
	);
	
CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	year INTEGER NOT NULL
	);
	
CREATE TABLE IF NOT EXISTS MusicianGenre (
	genre_id INTEGER REFERENCES Genre(genre_id),
	musician_id INTEGER REFERENCES Musician(musician_id),
	CONSTRAINT pk1 PRIMARY KEY (genre_id, musician_id)
	);
	
CREATE TABLE IF NOT EXISTS MusicianAlbum (
	album_id INTEGER REFERENCES Album(album_id),
	musician_id INTEGER REFERENCES Musician(musician_id),
	CONSTRAINT pk2 PRIMARY KEY (album_id, musician_id)
	);
	
CREATE TABLE IF NOT EXISTS TrackCollection (
	track_id INTEGER REFERENCES Track(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id),
	CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
	);

