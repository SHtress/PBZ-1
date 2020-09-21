USE task1;
SELECT DISTINCT personal_id  
FROM teacher_and_lesson WHERE lesson_id != '12П' AND
group_id = (SELECT DISTINCT group_id FROM student_group
WHERE group_name  = 'Э-15');