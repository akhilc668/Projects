package com.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.student.StudentMarks;

public class MarksBean {

	public static boolean save(StudentMarks m) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(m);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		return false;
	}
	
	public static List getMraksById(int studid) {
		Session se=Configure.config();
		Query qr=se.createQuery("from StudentMarks sm where sm.studid=:x");
		qr.setParameter("x", studid);
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getMarks(int studid,String year) {
		Session se=Configure.config();
		Query qr=se.createQuery("from StudentMarks sm where sm.studid=:x and sm.year=:y");
		qr.setParameter("x", studid);
		qr.setParameter("y", year);
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}

}
