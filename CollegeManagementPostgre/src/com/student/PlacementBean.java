package com.student;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.student.Placement;

public class PlacementBean {
	public static boolean save(Placement p) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(p);
		tx.commit();
		se.close();
		if(o!=null) {
			return true;
		}
		return false;
	}
	
	public static List getPlacementById(int studid) {
		Session se=Configure.config();
		Query qr=se.createQuery("from Placement p where p.studid=:x");
		qr.setParameter("x", studid);
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
}
