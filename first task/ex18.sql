USE task1;
SELECT lesson_id, lesson_id, group_id FROM teacher_and_lesson
WHERE personal_id in
	(SELECT personal_id FROM teacher
     WHERE speciality REGEXP'АСОИ' AND department='ЭВМ'
    )