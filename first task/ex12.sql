USE task1;
SELECT DISTINCT personal_id FROM teacher_and_lesson
WHERE lesson_id in 
	(SELECT lesson_id FROM lesson
     WHERE speciality = 'ЭВМ'
	)