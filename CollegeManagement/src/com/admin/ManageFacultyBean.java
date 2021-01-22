package com.admin;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configure.Configure;
import com.pojo.faculty.Faculty;

public class ManageFacultyBean {
	public static List getFaculty() {
		Session se=Configure.config();
		List li=se.createQuery("from Faculty f").list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static Faculty getFacultyById(int id) {
		Session se=Configure.config();
		List li=se.createQuery("from Faculty f where f.id=:x").setParameter("x", id).list();
		if(li!=null) {
			Faculty f=(Faculty)li.get(0);
			return f;
		}
		return null;
	}

	public static int removeFaculty(int id) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		int i=se.createQuery("delete from Faculty f where f.id=:x").setParameter("x",id).executeUpdate();
		tx.commit();
		return i;
	}
	
}
