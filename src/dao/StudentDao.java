package dao;

import java.util.List;

import javax.persistence.Id;

import org.hibernate.Query;
import org.hibernate.Session;

import model.Student;

public class StudentDao {
	public String create(Student st){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(st);
        s.getTransaction().commit();
        s.close();
        return "Student Saved";
    }
    public String update(Student st){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(st);
        s.getTransaction().commit();
        s.close();
        return "Student updated";
    }
    public String delete(Student st){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.delete(st);
        s.getTransaction().commit();
        s.close();
        return "Student deleted";
    }
    public Student findByid(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        Student st = (Student) s.get(Student.class, id);
        s.close();
        return st;
    }
    
    public List<Student> findAll(){
        Session s = HibernateUtil.getSessionFactory().openSession();
        Query q = s.createQuery("from Student");
        List<Student> li = q.list();
        s.close();
        return li;
    }  

	    

}
