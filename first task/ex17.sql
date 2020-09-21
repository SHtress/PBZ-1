USE task1;
SELECT * FROM teacher
WHERE personal_id in (
SELECT personal_id FROM teacher_and_lesson
WHERE group_id = '3Г' OR group_id = '8Г'
) AND post='Доцент'