-- CREATE TABLE Student (
--     s_id INT NOT NULL PRIMARY KEY,
--     s_name VARCHAR(50),
--     isBrilliant BIT
-- );

-- CREATE TABLE Teacher (
--     t_id INT NOT NULL PRIMARY KEY,
--     t_name VARCHAR(50),
--     isTenured BIT
-- )

-- CREATE TABLE StudentTeacher (
--     student_id INT,
--     teacher_id INT,
--     FOREIGN KEY (student_id) REFERENCES Student(s_id),
--     FOREIGN KEY (teacher_id) REFERENCES Teacher(t_id)
-- )

-- INSERT INTO Student VALUES (1, 'Ryan', 1);
-- INSERT INTO Student VALUES (2, 'Leo', 1);
-- INSERT INTO Student VALUES (3, 'Ernie', 0);

-- INSERT INTO Teacher VALUES (1, 'Levine', 1);
-- INSERT INTO Teacher VALUES (2, 'Foster', 0);
-- INSERT INTO Teacher VALUES (3, 'Schwimmer', 0);

-- INSERT INTO StudentTeacher
-- VALUES(1, 1), (1, 2), (2, 1), (2, 2), (2, 3), (3, 1);


-- ALTER TABLE Student CHANGE isBrilliant isBrilliant TINYINT;
-- Select * 
-- From StudentTeacher
--     INNER JOIN Student ON Student.s_id = StudentTeacher.student_id
--     INNER JOIN Teacher ON Teacher.t_id = StudentTeacher.teacher_id
--     WHERE Teacher.t_name = 'Foster'

-- Select Teacher.t_name 
-- From StudentTeacher
--     INNER JOIN Student ON Student.s_id = StudentTeacher.student_id
--     INNER JOIN Teacher ON Teacher.t_id = StudentTeacher.teacher_id
--     WHERE Student.s_name = 'Leo' AND Teacher.isTenured = 1

Select Student.s_name 
From StudentTeacher
    INNER JOIN Student ON Student.s_id = StudentTeacher.student_id
    INNER JOIN Teacher ON Teacher.t_id = StudentTeacher.teacher_id
    WHERE Teacher.t_name = 'Levine' AND Student.isBrilliant = 1

