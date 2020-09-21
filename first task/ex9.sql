USE task1;
SELECT group_name FROM student_group
WHERE group_id IN
	(SELECT group_id FROM teacher_and_lesson
     WHERE audience_id BETWEEN 100 AND 200
    );
SELECT lesson_name FROM Subject
WHERE lesson_id IN
	(SELECT lesson_id FROM teacher_and_lesson
     WHERE audience_id BETWEEN 100 AND 200
    )
