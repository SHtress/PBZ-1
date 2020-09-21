USE task1;
SELECT DISTINCT speciality FROM student_group
WHERE group_id in 
(SELECT group_id FROM teacher_and_lesson
JOIN teacher
ON teacher.personal_id=teacher_and_lesson.personal_id
WHERE teacher.department='АСУ'
)