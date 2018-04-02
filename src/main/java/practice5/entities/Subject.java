package practice5.entities;

import javax.persistence.Entity;
import javax.persistence.*;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name="mySubject")
public class Subject {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private int id;

    @Column(name="NAME")
    private String name;

    @OneToMany(mappedBy = "subject",cascade = CascadeType.ALL,orphanRemoval = true)
    private List<Student> students;

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

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

}
