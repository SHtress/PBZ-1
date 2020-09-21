CREATE  DATABASE task1;
USE task1;
CREATE TABLE teacher
(
	personal_id VARCHAR(20),
	surname VARCHAR(20),
	post VARCHAR(20),
    department VARCHAR(20),
    speciality VARCHAR(40),
    phone_number INT
);
INSERT teacher(personal_id, surname, post, department, speciality, phone_number)
VALUES
('221Л', 'Фролов', 'Доцент', 'ЭВМ', 'АСОИ, ЭВМ', 487 ),
('222Л', 'Костин', 'Доцент', 'ЭВМ', 'ЭВМ', 543 ),
('225Л', 'Бойко', 'Профессор', 'АСУ', 'АСОИ, ЭВМ', 112),
('430Л', 'Глазов', 'Ассистент', 'ТФ', 'СД', 421 ),
('110Л', 'Петров', 'Ассистент', 'Экономика', 'Международная экономика', 324);

CREATE TABLE lesson
(
	lesson_id VARCHAR(20),
	lesson_name VARCHAR(20),
	hours INT,
    speciality VARCHAR(40),
    term INT
);

INSERT lesson(lesson_id, lesson_name, hours, speciality, term)
VALUES
('12П', 'Мини ЭВМ', '36', 'ЭВМ', 1 ),
('14П', 'ПЭВМ', '72', 'ЭВМ',  2 ),
('17П', 'СУБД ПК', '48', 'АСОИ', 4),
('18П', 'ВКСС', '52', 'АСОИ',  6 ),
('34П', 'Физика', '30', 'СД', 6),
('22П', 'Аудит', '24', 'Бухучета', 3);

CREATE TABLE student_group
(
	group_id VARCHAR(20),
	group_name VARCHAR(20),
	person_number INT,
    speciality VARCHAR(40),
    headman_surname VARCHAR(20)
);

INSERT student_group(group_id, group_name, person_number, speciality, headman_surname)
VALUES
('8Г', 'Э-12', 18, 'ЭВМ', 'Иванова'),
('7Г', 'Э-15', 22, 'ЭВМ',  'Сеткин'),
('4Г', 'АС-9', 24, 'АСОИ', 'Балабанов'),
('3Г', 'АС-8', 20, 'АСОИ',  'Чижов'),
('17Г', 'С-14', 29, 'СД', 'Амросов'),
('12Г', 'М-6', 16, 'Международная экономика', 'Трубин'),
('10Г', 'Б-4', 21, 'Бухучет', 'Зязюткин');

CREATE TABLE teacher_and_lesson
(
	group_id VARCHAR(20),
	lesson_id VARCHAR(20),
	personal_id VARCHAR(20),
    audience_id INT
);

INSERT teacher_and_lesson(group_id, lesson_id,personal_id,audience_id)
VALUES
('8Г','12П','222Л',112),
('8Г','14П','221Л',220),
('8Г','17П','222Л',112),
('7Г','14П','221Л',220),
('7Г','17П','222Л',241),
('7Г','18П','225Л',210),
('4Г','12П','222Л',112),
('4Г','18П','225Л',210),
('3Г','12П','222Л',112),
('3Г','17П','221Л',241),
('3Г','18П','225Л',210),
('17Г','12П','222Л',112),
('17Г','22П','110Л',220),
('17Г','34П','430Л',118),
('12Г','12П','222Л',112),
('12Г','22П','110Л',210),
('10Г','12П','222Л',210),
('10Г','22П','110Л',210);