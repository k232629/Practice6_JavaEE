package practice5.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import practice5.entities.Lecture;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class LectureDao implements ILectureDao {

    @PersistenceContext
    private EntityManager entityManager;

    public Lecture getById(int id) {
        return entityManager.find(Lecture.class, id);
    }

    public Lecture save(Lecture lecture) {
        return entityManager.merge(lecture);
    }
}
