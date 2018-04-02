package practice5.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import practice5.dao.ISubjectDao;
import practice5.entities.Subject;

@Service
public class SubjectWorker {
    @Autowired
    private ISubjectDao subjectDao;

    public Subject getById(int id) {
        return subjectDao.getById(id);
    }

    public Subject save(Subject subject) {
        return subjectDao.save(subject);
    }
}
