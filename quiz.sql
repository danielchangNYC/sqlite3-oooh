-- Create a quiz.sql that will load all questions in a quiz.

SELECT questions.content AS "Questions", choices.content AS "Answer Choices", questions.id 

FROM choices LEFT OUTER JOIN questions
ON choices.question_id=questions.id

WHERE questions.quiz_id=1;
-- print all choices that have quiz_id of 1