CREATE table movies (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	old_id INTEGER UNIQUE,
	title TEXT NOT NULL,
	genres TEXT
);

CREATE TABLE ratings (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	movies_old_id INTEGER NOT NULL REFERENCES movies (old_id),
	movie_id INTEGER NOT NULL REFERENCES movies(id),
	userid INTEGER NOT NULL,
	rating TEXT,
	rate_time TEXT
);

