USE task1;
SELECT DISTINCT group_id FROM teacher_and_lesson
WHERE lesson_id in (
SELECT lesson_id FROM teacher_and_lesson
WHERE group_id in (
SELECT group_id FROM student_group
WHERE group_name = 'АС-8')
) AND group_id <> (SELECT group_id FROM student_group
					WHERE group_name = 'АС-8')