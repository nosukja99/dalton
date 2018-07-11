-- create database dalton;
use dalton;

truncate table student;
truncate table class;
truncate table classroom;
truncate table course;
truncate table subject;
truncate table major;
truncate table instructor;
truncate table department;


insert into department (id, department_name) values (1,"Arts and Humanities");
insert into department (id, department_name) values (2,"Engineering");
insert into department (id, department_name) values (3,"Information Technology");
insert into department (id, department_name) values (4,"Mathematics");

insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (1,1,"IT0001","Tara Zona","TZona","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (2,1,"IT0002","Barry Cade","Cade","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (3,2,"IT0003","Marvin Gardens","MGardens","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (4,2,"IT0004","Arty Ficial","Ficial","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (5,3,"IT0005","Tara Misu","TMisu","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (6,3,"IT0006","Dan Druff","DDruff","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (7,4,"IT0007","Gene Poole","GPoole","password");
insert into instructor (id, department_id, employee_num, instructor_name, user_name, password) values (8,4,"IT0008","Olive Yu","OYu","password");

insert into major (id, department_id, major_name) values (1,1,"Dance");
insert into major (id, department_id, major_name) values (2,1,"Visual Arts");
insert into major (id, department_id, major_name) values (3,2,"Chemical Engineering");
insert into major (id, department_id, major_name) values (4,2,"Mechanical Engineering");
insert into major (id, department_id, major_name) values (5,3,"Information Systems");
insert into major (id, department_id, major_name) values (6,3,"Computer Science");
insert into major (id, department_id, major_name) values (7,4,"Applied Mathematics");
insert into major (id, department_id, major_name) values (8,4,"Statistical Sciences");

insert into subject (id, subject_name) values (1,"Dance Technique");
insert into subject (id, subject_name) values (2,"Ballet");
insert into subject (id, subject_name) values (3,"Art");
insert into subject (id, subject_name) values (4,"Engineering");
insert into subject (id, subject_name) values (5,"Database");
insert into subject (id, subject_name) values (6,"Computer Programming");
insert into subject (id, subject_name) values (7,"Math");
insert into subject (id, subject_name) values (8,"Statistics");

insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (1,1,1,"DANC 310","Contemporary Dance","Emphasize the technical aspects of and growth of student skills in contemporary dance.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (2,2,1,"DANC 216","Intermediate Ballet","Continued study and refinement of classical technique.",2);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (3,3,2,"ART 210","Visual Concepts 2D","Intro to basic design principles.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (4,3,2,"ART 214","Beginning Drawing","The visual vocabulary of drawing.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (5,4,3,"ENCH 225","Chemical Engineering Problem Solving and Exp Design","Critical problem solving techniques.",4);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (6,4,3,"ENCH 300","Chemical Process Thermodynamics","An in-depth study of thermodynamics.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (7,4,4,"ENES 101","Introduction to Engineering","Subjects such as statics, heat transfer, and linear circuits.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (8,4,4,"ENME 110","Statics","The equilibrium of stationary bodies under the influence of forces.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (9,5,5,"IS 410","Database Design","Construct application data models.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (10,5,5,"CMSC 201","Database Application Development","Create complex data models for applications.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (11,6,6,"CMSC 201","Computer Science I","Intro to programming principles.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (12,6,6,"CMSC 203","Beginning Drawing","Concepts of discrete mathematics needed to study computer science.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (13,7,7,"MATH 151","Calculus I","Intro calculus concepts.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (14,7,7,"MATH 221","Linear Algebra","Intro to linear algebra.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (15,8,8,"STAT 351"," Applied Statistics for Business and Economics","Statistical analysis for e-commerce.",3);
insert into course (id, subject_id, major_id, course_num, course_name, course_description, credit) values (16,8,8,"STAT 451","Probability Theory","Distribution and probability.",3);

insert into classroom (id, building_name, room_num, max_capacity) values (1,"Van Gogh Building","VG101",25);
insert into classroom (id, building_name, room_num, max_capacity) values (2,"Van Gogh Building","VG201",10);
insert into classroom (id, building_name, room_num, max_capacity) values (3,"Newton Hall","NE130",22);
insert into classroom (id, building_name, room_num, max_capacity) values (4,"Newton Hall","NED140",15);
insert into classroom (id, building_name, room_num, max_capacity) values (5,"Reed Hall","RH214",30);
insert into classroom (id, building_name, room_num, max_capacity) values (6,"Reed Hall","RH100",20);


insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (1,1,1,1,"2194","current","MoWeFr","10:00am-11:50am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (2,2,1,1,"2187","current","TuTh","1:00pm-2:20pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (3,3,2,1,"1669","current","MoWe","4:00pm-5:50pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (4,3,2,1,"1670","current","Th","8:00pm-8:40pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (5,4,2,1,"2993","current","We","5:00pm-8:40pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (6,4,2,1,"4714","current","MoWe","10:00am-11:50am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (7,5,3,3,"5644","current","MoWeFr","1:00pm-1:50pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (8,5,3,3,"5645","current","We","2:30pm-4:50pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (9,6,3,3,"6160","current","Fr","3:00pm-5:00pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (10,6,3,3,"6161","current","MoWeFr","10:00am-10:50am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (11,7,3,3,"4402","current","MoFr","11:00am-11:50am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (12,7,4,3,"4403","current","Mo","2:30pm-4:20pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (13,8,4,3,"4484","past","TuTh","8:30am-9:45am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (14,8,4,3,"4486","current","Tu","1:00pm-2:15pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (15,9,5,4,"1800","current","Mo","2:30pm-3:45pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (16,9,5,4,"7826","current","Tu","8:30am-9:45am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (17,10,5,4,"5986","current","We","8:30am-9:45am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (18,11,5,4,"6205","current","TuTh","5:30pm-6:45pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (19,11,5,4,"6207","current","Th","7:10pm-8:00pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (20,12,5,4,"1106","current","MoWe","2:30pm-3:45pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (21,13,7,5,"2608","current","TuTh","5:30pm-6:45pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (22,13,7,5,"2611","current","TuTh","7:10pm-8:00pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (23,14,7,5,"2384","current","TuTh","5:30pm-6:45pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (24,14,7,5,"4525","past","TuTh","7:10pm-8:25pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (25,15,8,6,"3467","current","MoWeFr","11:00am-11:50am");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (26,15,8,6,"3469","current","Fr","1:00pm-1:50pm");
insert into class(id, course_id, instructor_id, classroom_id, crn, semester, day, time) values (27,16,8,6,"2497","current","TuTh","10:00am-11:15am");


insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (1,1,"ST0001","Mario Speedwagon","2018","MSpeedwagon","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (2,2,"ST0002","Petey Cruiser","2018","PCruiser","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (3,3,"ST0003","Paul Molive","2017","PMolive","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (4,4,"ST0004","Anna Mull","2013","AMull","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (5,5,"ST0005","MPaige Turner","2015","PTurner","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (6,6,"ST0006","Bob Frapples","2016","BFrapples","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (7,7,"ST0007","Walter Melon","2017","WMelon","password");
insert into student (id, major_id, student_num, student_name, year_entry, user_name, password) values (8,8,"ST0008","MGreta Life","2012","GLife","password");