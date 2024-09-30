create database music_shop;

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name_performers VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS GenrePerformers (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	performers_id INTEGER NOT NULL REFERENCES Performers(id)
);

CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(30) NOT NULL,
	release_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS PerformersAlbum (
	id SERIAL PRIMARY KEY,
	performers_id INTEGER NOT NULL REFERENCES Performers(id),
	album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(60),
	release_year INTEGER
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	duration INTEGER,
	name_track VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS CollectionTrack (
	id SERIAL PRIMARY KEY,
	collection_id INTEGER NOT NULL REFERENCES Collection(id),
	track_id INTEGER NOT NULL REFERENCES Tracks(id)
);