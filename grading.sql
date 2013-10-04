-- -- Create a grading.sql that will grade each quiz for each user.

-- -- These should be using joins.

-- Display # correct for all students in all quizzes
SELECT users.name, quizzes.content AS "quiz", SUM(choices.correctness) AS "total correct"

FROM answers
		LEFT OUTER JOIN choices
  ON choices.id=answers.choice_id
        
    LEFT OUTER JOIN users
  ON answers.user_id=users.id
      
    LEFT OUTER JOIN questions
  ON questions.id=answers.question_id
    
    LEFT OUTER JOIN quizzes
  ON questions.quiz_id = quizzes.id

GROUP BY user_id, quizzes.id;