USE task1;
SELECT DISTINCT group_id FROM teacher_and_lesson
WHERE group_id NOT IN (
SELECT DISTINCT group_id FROM teacher_and_lesson
WHERE lesson_id IN (
SELECT lesson_id FROM teacher_and_lesson
WHERE personal_id='430Л')
)