USE task1;
SELECT * FROM lesson
WHERE lesson_id in
	(SELECT lesson_id FROM teacher_and_lesson
     WHERE NOT lesson_id in 
		(SELECT lesson_id FROM teacher_and_lesson
		 WHERE personal_id = '221Л'
        )
    )