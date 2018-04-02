package practice5.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import practice5.entities.Subject;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
@Transactional
public class SubjectDao implements ISubjectDao {

    @PersistenceContext
    private EntityManager entityManager;

    public Subject getById(int id) { return entityManager.find(Subject.class, id);
    }

    public Subject save(Subject subject) {
        return entityManager.merge(subject);
    }
}
