USE task1;
SELECT surname FROM teacher
WHERE personal_id in (
SELECT personal_id FROM teacher_and_lesson
WHERE lesson_id in (
SELECT lesson_id FROM teacher_and_lesson
WHERE personal_id in
	(
	SELECT personal_id FROM teacher_and_lesson 
	WHERE lesson_id = '14П' 
	)
)
)