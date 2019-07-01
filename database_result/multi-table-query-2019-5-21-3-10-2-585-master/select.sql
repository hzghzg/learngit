# 1.查询同时存在1课程和2课程的情况(我认为和第六题一个意思)
select * from student where id in (select studentid from student_course where courseid="1" or courseid="2" group by studentid having COUNT(studentid)=2);
# 2.查询同时存在1课程和2课程的情况
select * from student where id in (select studentid from student_course where courseid="1" or courseid="2" group by studentid having COUNT(studentid)=2);
# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
select studentid,name,AVG(score) from student,student_course where studentid=id group by id having AVG(score)>=60;
# 4.查询在student_course表中不存在成绩的学生信息的SQL语句
select distinct id,name,age,sex from student_course right outer join student on studentid=id where score is null;
# 5.查询所有有成绩的SQL
select * from student where id in (select distinct id from student_course right outer join student on studentid=id where score is not null);
# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息
select * from student where id in (select studentid from student_course where courseid="1" or courseid="2" group by studentid having COUNT(studentid)=2);
# 7.检索1课程分数小于60，按分数降序排列的学生信息
select distinct id,name,age,sex from student,student_course where id=studentid having id in (select studentid from student_course where courseid="1" and score<60) order by score desc; 
# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
select studentid,course.name, AVG(student_course.score) as average from student_course, course where course.id= courseid group by studentid order by average desc,course.id asc;
# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数
select student.name,score from student,course,student_course where student.id=studentid and courseid=course.id course.name="数学" having score<60;