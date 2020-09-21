USE task1;
SELECT group_id FROM teacher_and_lesson
WHERE personal_id = 
	(SELECT personal_id FROM teacher
     WHERE surname='Фролов'
    )