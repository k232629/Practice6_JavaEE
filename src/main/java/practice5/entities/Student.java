package practice5.entities;

import org.hibernate.annotations.JoinColumnOrFormula;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "STUDENT")
public class Student {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private int id;

    @Column(name = "NAME")
    private String name;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "STUDENT_TO_LECTURE", joinColumns = @JoinColumn(name = "STUDENT_ID"), inverseJoinColumns = @JoinColumn(name = "LECTURE_ID"))
    private List<Lecture> lectures;

    @OneToOne
    @JoinColumn(name = "student_address")
    private Address myAddress;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="student_subject")
    private Subject subject;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Lecture> getLectures() {
        return lectures;
    }

    public void setLectures(List<Lecture> lectures) {
        this.lectures = lectures;
    }

    public Address getAddress() {
        return myAddress;
    }

    public void setAddress(Address address) {
        this.myAddress = address;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Student student = (Student) o;

        if (id != student.id) return false;
        if (name != null ? !name.equals(student.name) : student.name != null) return false;
        if (lectures != null ? !lectures.equals(student.lectures) : student.lectures != null) return false;
        if (myAddress != null ? !myAddress.equals(student.myAddress) : student.myAddress != null) return false;
        return subject != null ? subject.equals(student.subject) : student.subject == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (lectures != null ? lectures.hashCode() : 0);
        result = 31 * result + (myAddress != null ? myAddress.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }


}
