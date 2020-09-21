USE task1;
SELECT * FROM teacher
WHERE personal_id in
	(SELECT personal_id FROM teacher_and_lesson
	 WHERE audience_id = 210
    )