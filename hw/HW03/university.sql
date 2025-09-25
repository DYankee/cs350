drop table student;
create table student (
  name VARCHAR(20),
  student_number int primary key,
  class varchar(20),
  major varchar(5)
);
insert into student (name, student_number, class, major)
VALUES
  ('Smith',17,1,'CS'),
  ('Brown',8,2,'CS');

drop table course;
create table course(
  course_name varchar(50),
  course_number varchar(20) primary key,
  credit_hours int,
  department varchar(5)
);
insert into course (course_name, course_number, credit_hours, department)
VALUES('Intro to Computer Science',
 'CS1310',
 4,
 'CS'),
('Data Structures',
 'CS3320',
 4,
 'CS'),
('Discrete Mathematics',
 'MATH2410',
 3,
 'MATH'),
('Database',
 'CS3380',
 3,
 'CS');

create table section(
  section_identifier int primary key,
  course_number varchar(20),
  semester varchar(20),
  year int,
  instructor varchar(20)
);
insert into section (section_identifier, course_number, semester, year, instructor)
VALUES
  (
  85,
  'MATH2410',
  'Fall',
  07,
  'King'),
  (
  92,
  'CS1310',
  'Fall',
  07,
  'Anderson'),
(
  102,
  'CS3320',
  'Spring',
  08,
  'Knuth'),
(
  112,
  'MATH2410',
  'Fall',
  08,
  'Chang'),
  (
  119,
  'CS1310',
  'Fall',
  08,
  'Anderson'),
  (
  135,
  'CS3380',
  'Fall',
  08,
  'Stone');

create table grade_report(
  student_number int,
  section_identifier int primary key,
  grade varchar(5)
);
insert into grade_report (student_number, section_identifier, grade)
VALUES
  (
  17,
  112,
  'B'),
  (
17,
 119,
 'C'),
  (
  8,
  85,
  'A'),
(
  8,
  92,
  'A'),
  (
  8,
  102,
  'B'),
  (
  8,
  135,
  'A');


create table prerequisite(
  course_number int,
  prerequisite_number int primary key
);
insert into prerequisite (course_number, prerequisite_number)
VALUES
('CS3380', 'CS3320'),
('CS3380', 'MATH2410'),
('CS3320', 'CS1310');