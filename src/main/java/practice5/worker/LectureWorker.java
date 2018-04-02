package practice5.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import practice5.dao.ILectureDao;
import practice5.entities.Lecture;

@Service
public class LectureWorker {

    @Autowired
    private ILectureDao lectureDao;

    public Lecture getById(int id) {
        return lectureDao.getById(id);
    }

    public Lecture save(Lecture lecture) {
        return lectureDao.save(lecture);
    }

}
