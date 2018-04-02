package practice5;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import practice5.entities.Address;
import practice5.entities.Lecture;
import practice5.entities.Student;
import practice5.entities.Subject;
import practice5.worker.AddressWorker;
import practice5.worker.LectureWorker;
import practice5.worker.StudentWorker;
import practice5.worker.SubjectWorker;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class App {

    public static void main(String [] args){
        ApplicationContext context = new ClassPathXmlApplicationContext("SpringBean.xml");

        LectureWorker lectureWorker = (LectureWorker) context.getBean("lectureWorker");
        StudentWorker studentWorker = (StudentWorker) context.getBean("studentWorker");
        AddressWorker addressWorker = (AddressWorker) context.getBean("addressWorker");
        SubjectWorker subjectWorker = (SubjectWorker) context.getBean("subjectWorker");

        Student student = new Student();
        student.setName("test2_student");

//        List<Lecture> lectures = new ArrayList<Lecture>();
//
//        for (int i = 0; i < 5; ++i) {
//            Lecture lecture = new Lecture();
//            lecture.setName("lecture_" + i);
//            lecture.setCredits(i);
//
//            lecture = lectureWorker.save(lecture);
//            lectures.add(lecture);
//        }
//
//        student.setLectures(lectures);

        //student = studentWorker.save(student);
//        System.out.println(String.format(
//                "Lectures [%s] of student [%s]", student.getLectures(), student.getName()
//        ));
//
//        Lecture lecture = new Lecture();
//        lecture.setCredits(10);
//        lecture.setName("java ee");
//        lecture = lectureWorker.save(lecture);
//
//        for (int i = 0; i < 10; ++i) {
//            student = new Student();
//            student.setName("student_" + i);
//            student.setLectures(Arrays.asList(lecture));
//
//            studentWorker.save(student);
//        }
//
//        lecture = lectureWorker.getById(lecture.getId());
//
//        System.out.println(String.format(
//                "Students [%s] of lecture [%s]", lecture.getStudents(), lecture.getName()
//        ));



        Address address = new Address();
        address.setStreet("shevchenka2");
        address.setCity("kyiv2");
        address=addressWorker.save(address);
        student.setAddress(address);
        studentWorker.save(student);
        address=addressWorker.getById(address.getId());
        System.out.println(String.format(
                "Student [%s] has address [%s]",address.getStudent(),address.getStreet()+" "+address.getCity()
        ));

        List<Student> students = new ArrayList<Student>();
        Subject subject = new Subject();
        subject.setName("Math");

        for (int i = 0; i < 5; ++i) {
            Student student1 = new Student();
            student1.setName("stud_" + i);
            student1 = studentWorker.save(student1);
            student1.setSubject(subject);
            students.add(student1);
        }

        System.out.println(students.toString());
        subject.setStudents(students);
        subjectWorker.save(subject);

        for(int i =0;i<students.size();i++){
            System.out.println(students.get(i).getName()+"  "+students.get(i).getSubject());
        }


    }
}
