USE task1;
SELECT * FROM subject
WHERE lesson_id in (
SELECT lesson_id FROM teacher_and_slesson
WHERE NOT lesson_id in (
	SELECT lesson_id FROM teacher_and_lesson
	WHERE group_id = 
		(
		SELECT group_id FROM student_group
		WHERE group_name = 'М-6'
		)
	)
)