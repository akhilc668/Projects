package com.faculty;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.faculty.Seminar;



public class SeminarBean {

	public static boolean add(Seminar sp) {
		
		Session se = Configure.config();
		Transaction tx = se.beginTransaction();
		Object o = se.save(sp);
		tx.commit();
		if(o!=null)
			return true;
		return false;
		
	}

	public static List<Seminar> getSeminarById(int fid) {
		Session se=Configure.config();
		Query<Seminar> qr=se.createQuery("from Seminar s where s.fid=:x");
		qr.setParameter("x", fid);
		List<Seminar> li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
}
