package practice5.dao;

import practice5.entities.Subject;

public interface ISubjectDao {

    Subject getById(int id);

    Subject save(Subject subject);
}
