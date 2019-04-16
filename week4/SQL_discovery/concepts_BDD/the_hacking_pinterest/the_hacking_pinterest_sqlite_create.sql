CREATE TABLE users (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE pins (
	id integer PRIMARY KEY AUTOINCREMENT,
	url text,
	user_id integer
);

CREATE TABLE comments (
	id blob PRIMARY KEY AUTOINCREMENT,
	content text,
	pins_id text,
	users_id text
);

