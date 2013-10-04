-- Create a schema.sql file to make the following database structure

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS quizzes;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS choices;
DROP TABLE IF EXISTS answers;

CREATE TABLE users(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

-- Users

-- id ||  name 
-- 1				Bob
-- 2				Sam

CREATE TABLE quizzes(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	content TEXT
);

-- id ||  name 
-- 1			Geo1
-- 2			Geo2
-- 3			Geo3


CREATE TABLE questions(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	content TEXT,
	quiz_id INTEGER
);

-- id ||  content:blob    ||  quiz_id   
-- 1				First president?		1

CREATE TABLE choices(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	content TEXT,
	question_id INTEGER,
	correctness INTEGER
);

-- id ||  content: blob   ||  question_id  
-- 1				Washington 					1
-- 2				Lincoln							1
-- 3				Batman							1
-- 4				The blob						1

CREATE TABLE answers(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	user_id INTEGER,
	question_id INTEGER,
	choice_id INTEGER
);

-- id || user_id		||	question_id		||	choice_id
-- 1			2 (Sam)					1									3