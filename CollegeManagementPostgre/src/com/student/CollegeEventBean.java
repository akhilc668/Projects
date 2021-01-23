package com.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.student.CollegeEvent;

public class CollegeEventBean {

	public static boolean save(CollegeEvent ce) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(ce);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		return false;
	}
	
	public static List getEventsById(int studid) {
		Session se=Configure.config();
		Query qr=se.createQuery("from CollegeEvent ce where ce.studid=:x");
		qr.setParameter("x", studid);
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}

}
