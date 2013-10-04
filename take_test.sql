-- Create a take_test.sql for each user that multi inserts their answers for.

-- Every user has taken both quizzes and answered all questions.

-- User 1 has gotten a perfect
-- User 2 has answer 3/5 correct.
-- User 3 has answered 1/5 correct.

INSERT INTO answers (user_id, question_id, choice_id)
VALUES
	(1, 1, 4),
	(1, 2, 6),
	(1, 3, 9),
	(1, 4, 15),
	(1, 5, 20)
;

INSERT INTO answers (user_id, question_id, choice_id)
VALUES
	(2, 1, 3),
	(2, 2, 5),
	(2, 3, 9),
	(2, 4, 15),
	(2, 5, 18)
;

INSERT INTO answers (user_id, question_id, choice_id)
VALUES
	(3, 1, 4),
	(3, 2, 7),
	(3, 3, 9),
	(3, 4, 15),
	(3, 5, 17)
;

INSERT INTO answers (user_id, question_id, choice_id)
VALUES
	(1, 6, 23),
	(1, 7, 25),
	(1, 8, 32),
	(1, 9, 36),
	(1, 10, 38)
;

INSERT INTO answers (user_id, question_id, choice_id)
VALUES
	(2, 6, 23),
	(2, 7, 25),
	(2, 8, 32),
	(2, 9, 35),
	(2, 10, 37)
;

INSERT INTO answers (user_id, question_id, choice_id)
VALUES
	(3, 6, 23),
	(3, 7, 26),
	(3, 8, 32),
	(3, 9, 35),
	(3, 10, 37)
;
