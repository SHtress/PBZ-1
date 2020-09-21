USE task1;
SELECT DISTINCT group_id FROM teacher_and_lesson
JOIN teacher ON teacher_and_lesson.personal_id=teacher.personal_id
WHERE speciality in (SELECT speciality FROM student_group WHERE group_id=teacher_and_lesson.group_id)
