USE task1;
SELECT lesson_id, lesson_name FROM lesson
WHERE lesson_id IN
	(SELECT lesson_id FROM teacher_and_lesson
	 WHERE personal_id=
		(SELECT personal_id FROM teacher
		 WHERE surname='Костин')
	);