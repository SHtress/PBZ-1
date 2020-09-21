USE task1;
SELECT DISTINCT personal_id FROM teacher_and_lesson
WHERE group_id in (
	SELECT group_id FROM student_group
	WHERE  speciality in (SELECT speciality FROM teacher)
	) 
AND personal_id in (SELECT personal_id FROM teacher
					WHERE department='ЭВМ'
                    )