USE task1;
WITH tab1 (lesson_id, t) AS (SELECT lesson_id, COUNT(*) AS t FROM teacher_and_lesson GROUP BY lesson_id)
SELECT lesson_id FROM tab1
WHERE tab1.t = (SELECT COUNT(*) FROM student_group)
