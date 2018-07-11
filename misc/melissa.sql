use dalton;

select * from student;
select * from class;
select * from classroom;
select * from course;
select * from subject;
select * from major;
select * from instructor;
select * from department;

-- list of classes and instructors
select course.id as course_id, course.course_name, class.crn, class.day, class.time, instructor.instructor_name
from course
inner join class on course.id = class.course_id
inner join instructor on instructor.id = class.instructor_id
order by instructor_name;

-- list of classes and students in each class
select course.course_name, student.class_id as class_id, class.crn, instructor.instructor_name, student.id as student_id, student.student_name
from course
inner join class on course.id = class.course_id
inner join instructor on instructor.id = class.instructor_id
inner join student on class.id = student.class_id
order by crn;

-- list of classes not from the current semester with students and their grades
select course.course_name, student.class_id as class_id, class.crn, instructor.instructor_name, student.id as student_id, student.student_name, grade.grade
from course
inner join class on course.id = class.course_id
inner join instructor on instructor.id = class.instructor_id
inner join student on class.id = student.class_id
inner join grade on grade.student_id = 
