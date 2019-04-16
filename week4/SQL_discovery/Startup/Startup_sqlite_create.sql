CREATE TABLE users (
	id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE TABLE articles (
	id integer PRIMARY KEY AUTOINCREMENT,
	content text,
	user_id integer,
	category_id integer
);

CREATE TABLE categories (
	id integer PRIMARY KEY AUTOINCREMENT,
	title text,
	article_id integer
);

CREATE TABLE tags (
	id integer PRIMARY KEY AUTOINCREMENT,
	title text,
	color text,
	category_id integer
);

