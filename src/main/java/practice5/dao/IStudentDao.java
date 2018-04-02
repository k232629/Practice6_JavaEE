package practice5.dao;

import practice5.entities.Student;

public interface IStudentDao {

    Student getById(int id);

    Student save(Student student);

}
