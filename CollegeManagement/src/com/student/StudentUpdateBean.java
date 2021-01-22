package com.student;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configure.Configure;
import com.pojo.student.Student;

public class StudentUpdateBean {

	public static Student update(Student s) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Student stud=(Student)se.merge(s);
		tx.commit();
		se.close();
		if(stud!=null)
			return stud;
		return null;
	}

}
