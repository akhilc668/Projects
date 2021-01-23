package com.admin;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.student.Student;


public class ManageStudentBean {
	public static List getStudent() {
		Session se=Configure.config();
		List li=se.createQuery("from Student s").list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static Student getStudentById(int id) {
		Session se=Configure.config();
		List li=se.createQuery("from Student s where s.id=:x").setParameter("x", id).list();
		if(li!=null) {
			Student f=(Student)li.get(0);
			return f;
		}
		return null;
	}

	public static int removeStudent(int id) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		int i=se.createQuery("delete from Student s where s.id=:x").setParameter("x",id).executeUpdate();
		tx.commit();
		return i;
	}
	
	public static List getStudents(String firstname,String lastname,String rollnumber) {
		
		Session se=Configure.config();
		Query q=se.createQuery("from Student s where s.firstname=:x or s.lastname=:y or s.rollnumber=:z");
				q.setParameter("x", firstname).setParameter("y", lastname).setParameter("z", rollnumber);
				List li=q.list();
		if(li!=null)
			return li;
		return null;
	}
}
