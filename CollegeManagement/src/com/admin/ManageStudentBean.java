package com.admin;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

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
}
