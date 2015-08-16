DROP TABLE student;
DROP TABLE subject;
DROP TABLE student_subject;

CREATE TABLE student
(
student_id INT PRIMARY KEY,
first_name VARCHAR2(100),
last_name VARCHAR2(100)
);


CREATE TABLE subject
(
subject_id INT PRIMARY KEY,
subject_name VARCHAR2(100)
);


CREATE TABLE student_subject
(
student_id INT,
subject_id INT,
FOREIGN KEY (student_id) REFERENCES student(student_id),
FOREIGN KEY (subject_id) REFERENCES subject(subject_id)

);