-- Write an insert.sql file to create the following data:

-- There should be 3 users.
INSERT INTO users (name)
VALUES
	("Sam"),
	("Dan"),
	("Scott")
;

-- There should be 2 quizzes.
INSERT INTO quizzes (content)
VALUES 
	("Geo Test"),
	("Flatiron Test")
;

-- Each quiz has 5 questions.
INSERT INTO questions (content, quiz_id)
VALUES 
	("What's the capital of NY?", 1),
	("What's the capital of China?", 1),
	("What's the capital of USA?", 1),
	("What's the capital of CT?", 1),
	("What's the capital of MA?", 1),
	("What command lists directory?", 2),
	("What command removes something?", 2),
	("What command creates a dir?", 2),
	("What command creates a file?", 2),
	("What command moves a file?", 2)
;

-- Each question has 4 answers.
INSERT INTO choices (content, question_id, correctness)
VALUES 
	("Washington DC", 1, 0),
	("Beijing", 1, 0),
	("Hartford", 1, 0),
	("Albany", 1, 1),

	("Washington DC", 2, 0),
	("Beijing", 2, 1),
	("Hartford", 2, 0),
	("Springfield", 2, 0),

	("Washington DC", 3, 1),
	("Beijing", 3, 0),
	("Hartford", 3, 0),
	("Springfield", 3, 0),
	
	("Washington DC", 4, 0),
	("Beijing", 4, 0),
	("Hartford", 4, 1),
	("Springfield", 4, 0),

	("Washington DC", 5, 0),
	("Beijing", 5, 0),
	("Hartford", 5, 0),
	("Springfield", 5, 1),

	("list", 6, 0),
	("show", 6, 0),
	("ls", 6, 1),
	("sh", 6, 0),

	("rm", 7, 1),
	("rv", 7, 0),
	("rf", 7, 0),
	("re", 7, 0),

	("dir", 8, 0),
	("makedir", 8, 0),
	("mkdr", 8, 0),
	("mkdir", 8, 1),

	("mkfile", 9, 0),
	("cd", 9, 0),
	("create", 9, 0),
	("touch", 9, 1),

	("movefile", 10, 0),
	("mv", 10, 1),
	("mf", 10, 0),
	("mvfile", 10, 0)	
;

-- Answers should be inserted into questions via a multi-insert.