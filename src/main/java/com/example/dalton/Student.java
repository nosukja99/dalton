package com.example.dalton;



import javax.persistence.*;
import java.util.Set;

@Entity
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String studentName;
    private String yearEntry;
    private String studentNum;

    @ManyToMany
    @JoinTable(
            name ="STUDENT_COURSE", joinColumns=@JoinColumn(name="STUDENT_ID", referencedColumnName = "ID"),
            inverseJoinColumns = @JoinColumn(name = "COURSE_ID", referencedColumnName = "ID"))
    private Set<Course> courses;

    @ManyToMany
    @JoinTable(
            name ="STUDENT_MAJOR", joinColumns=@JoinColumn(name="STUDENT_ID", referencedColumnName = "ID"),
            inverseJoinColumns = @JoinColumn(name = "MAJOR_ID", referencedColumnName = "ID"))
    private Set<Major> majors;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getYearEntry() {
        return yearEntry;
    }

    public void setYearEntry(String yearEntry) {
        this.yearEntry = yearEntry;
    }

    public String getStudentNum() {
        return studentNum;
    }

    public void setStudentNum(String studentNum) {
        this.studentNum = studentNum;
    }

    public Set<Course> getCourses() {
        return courses;
    }

    public void setCourses(Set<Course> courses) {
        this.courses = courses;
    }

    public Set<Major> getMajors() {
        return majors;
    }

    public void setMajors(Set<Major> majors) {
        this.majors = majors;
    }
}
