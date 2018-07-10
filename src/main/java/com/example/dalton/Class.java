package com.example.dalton;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Date;

@Entity
public class Class {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String classNum;

    private String day;
    private String time;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name ="instructor_id")
    private Instructor instructor;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name ="classroom_id")
    private Classroom classroom;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name ="course_id")
    private Course course;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getClassNum() {
        return classNum;
    }

    public void setClassNum(String classNum) {
        this.classNum = classNum;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Instructor getInstructor() {
        return instructor;
    }

    public void setInstructor(Instructor instructor) {
        this.instructor = instructor;
    }

    public Classroom getClassroom() {
        return classroom;
    }

    public void setClassroom(Classroom classroom) {
        this.classroom = classroom;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}
