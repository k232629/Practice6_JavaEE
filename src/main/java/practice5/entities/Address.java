package practice5.entities;


import javax.persistence.Entity;
import javax.persistence.*;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private int id;

    @Column(name = "STREET")
    private String street;

    @Column(name = "CITY")
    private String city;


    @OneToOne(mappedBy = "myAddress")
    private Student student;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }


    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    @Override
    public String toString() {
        return "Address{" +
                "id=" + id +
                ", street='" + street + '\'' +
                ", city=" + city +
                '}';
    }
}
