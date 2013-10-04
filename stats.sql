-- Create a stats.sql that will show the percentage or total right answers.

-- Do percentage if you want to try to use MATH functions within SQL This will need to use joins too and might get complicated.

SELECT users.name, quizzes.content AS "quiz", SUM(choices.correctness)*100/COUNT(choices.correctness) AS "total correct"

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