package com.student;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.student.Student;


public class StudentBean {
	
	public static boolean save(Student s) {
		Session se = Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(s);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		return false;
	}
	
	public static Student login(String email, String password) {
		Session se = Configure.config();
		Transaction tx=se.beginTransaction();
		Query qe=se.createQuery("from Student s where s.email=:x and s.password=:y");
		qe.setParameter("x", email);
		qe.setParameter("y", password);
		List<Student> li=qe.list();
		tx.commit();
		se.close();
		if(li.size()==1) {
			Student s=li.get(0);
			return s;
		}
		return null;
	}
}
