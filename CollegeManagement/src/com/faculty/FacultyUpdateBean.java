package com.faculty;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configure.Configure;
import com.pojo.faculty.Faculty;


public class FacultyUpdateBean {

	public static Faculty update(Faculty fp) {

		Session se = Configure.config();
		Transaction tx = se.beginTransaction();
		Faculty f=(Faculty)se.merge(fp);
		tx.commit();
		if(f!=null)
			return f;
		return null;
	}

}
