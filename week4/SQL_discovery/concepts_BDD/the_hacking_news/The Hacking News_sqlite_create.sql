CREATE TABLE users (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE sub_comments (
	id integer PRIMARY KEY AUTOINCREMENT,
	content text,
	comment_id integer,
	user_id integer
);

CREATE TABLE comments (
	id integer PRIMARY KEY AUTOINCREMENT,
	content text,
	post_id integer,
	user_id integer
);

CREATE TABLE posts (
	id integer PRIMARY KEY AUTOINCREMENT,
	link text,
	user_id integer
);

