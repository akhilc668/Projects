package com.Alumini;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.commonfiles.Configure;
import com.pojo.Alumni;


public class AlumniBean {


	public static boolean register(Alumni a) {
		
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=se.save(a);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		else
			return false;
	}

	public static Alumni login(String email, String password) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Query qe=se.createQuery("from Alumni a where a.email=:x and a.password=:y and a.status=:z");
		qe.setParameter("x", email);
		qe.setParameter("y", password);
		qe.setParameter("z","Accepted");
		Alumni li=(Alumni) qe.list();
		tx.commit();
		se.close();
		
		return li;		
	}
}
