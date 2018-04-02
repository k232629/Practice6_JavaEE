package practice5.dao;

import practice5.entities.Lecture;

public interface ILectureDao {

    Lecture getById(int id);

    Lecture save(Lecture lecture);


}
