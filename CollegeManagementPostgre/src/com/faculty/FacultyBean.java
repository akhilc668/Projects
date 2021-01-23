package com.faculty;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.faculty.Faculty;



public class FacultyBean {
	public static boolean register(Faculty f) {
		Session se = Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(f);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		return false;
	}
	
	public static Faculty login(String email, String password) {
		Session se = Configure.config();
		Transaction tx=se.beginTransaction();
		Query qe=se.createQuery("from Faculty f where f.email=:x and f.password=:y");
		qe.setParameter("x", email);
		qe.setParameter("y", password);
		List<Faculty> li=qe.list();
		tx.commit();
		se.close();
		if(li.size()==1) {
			Faculty s=li.get(0);
			return s;
		}
		return null;
	}
	
}
