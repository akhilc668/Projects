package com.directorate;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.commonfiles.Configure;
import com.pojo.College;


public class ManageCollegeBean {
	public static List getRegisteredCollege() {
		Session se=Configure.config();
		List li=se.createQuery("from College c").list();
		se.close();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getCollege(String collegename,String ccode) {
		Session se=Configure.config();
		List li=se.createQuery("from College c where c.cname=:y  or c.collegecode=:z").setParameter("z", ccode).setParameter("y", collegename).list();
		se.close();
		if(li!=null)
			return li;
		return null;
	}

	public static boolean accept(int id) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Query q=se.createQuery("Update College c set c.status=:x where c.cid=:y").setParameter("x", "Accepted").setParameter("y", id);
		int i=q.executeUpdate();
		tx.commit();
		if(i>0)
			return true;
		return false;
	}

	public static boolean remove(int id) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Query q=se.createQuery("Update College c set c.status=:x where c.cid=:y").setParameter("x", "removed").setParameter("y", id);
		int i=q.executeUpdate();
		tx.commit();
		if(i>0)
			return true;
		return false;
	}
	
	public static List getColleges() {
		Session se=Configure.config();
		List li=se.createQuery("from College c where c.status=:x").setParameter("x", "Accepted").list();
		se.close();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getCollegesBySearch(String collegename,String ccode) {
		Session se=Configure.config();
		List li=se.createQuery("from College c where (c.cname=:y and c.status=:x) or (c.collegecode=:z and c.status=:x)").setParameter("z", ccode).setParameter("y", collegename).setParameter("x", "Accepted").list();
		se.close();
		if(li!=null)
			return li;
		return null;
	}
	
	public static College getCollegeById(int id) {
		Session se=Configure.config();
		List li=se.createQuery("from College c where c.cid=:x").setParameter("x", id).list();
		if(li!=null) {
			College c=(College)li.get(0);
			return c;
		}
		return null;
	} 
	
	
}
