USE task1;
SELECT DISTINCT s1.group_id, s2.group_id 
FROM student_group as s1, student_group as s2
WHERE s1.speciality=s2.speciality AND s1.group_id <> s2.group_id