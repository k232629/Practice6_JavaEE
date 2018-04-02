package practice5.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import practice5.dao.IStudentDao;
import practice5.entities.Student;

@Service
public class StudentWorker {

    @Autowired
    private IStudentDao studentDao;

    public Student getById(int id) {
        return studentDao.getById(id);
    }

    public Student save(Student student) {
        return studentDao.save(student);
    }

}
