package practice5.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import practice5.entities.Student;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class StudentDao implements IStudentDao {

    @PersistenceContext
    private EntityManager entityManager;

    public Student getById(int id) {
        return entityManager.find(Student.class, id);
    }

    public Student save(Student student) {
        return entityManager.merge(student);
    }
}
