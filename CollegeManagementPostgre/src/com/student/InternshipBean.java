package com.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.student.Internship;

public class InternshipBean {

	public static boolean save(Internship i) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(i);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		return false;
	}
	
	public static List getInternshipById(int studid) {
		Session se=Configure.config();
		Query qr=se.createQuery("from Internship i where i.studid=:x");
		qr.setParameter("x", studid);
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}

}
