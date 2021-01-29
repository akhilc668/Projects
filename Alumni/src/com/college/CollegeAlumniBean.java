package com.college;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.commonfiles.Configure;

public class CollegeAlumniBean {

	public static List getRegisteredAlumni(String cname)
	{
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		List li=se.createQuery("from Alumni a where a.collegename=:y").setParameter("y",cname).list();
		if(li!=null)
			return  li;
		else
		return null;		
	}
	public static List getAlumni(String department,int year,String cname)
	{
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		List li=se.createQuery("from Alumni a where (a.collegename=:w and a.department=:x ) or (a.collegename=:w and a.year=:z)").setParameter("w", cname).setParameter("x", department).setParameter("z",year).list();
		if(li!=null)
			return li;
		else
			return null;
	}
	public static boolean accept(int id) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Query q=se.createQuery("Update Alumni a set a.status=:x where a.aid=:y").setParameter("x", "Accepted").setParameter("y", id);
		int i=q.executeUpdate();
		tx.commit();
		if(i>0)
			return true;
		return false;
	}
	
	public static boolean remove(int id) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Query q=se.createQuery("Update Alumni a set a.status=:x where a.aid=:y").setParameter("x", "removed").setParameter("y", id);
		int i=q.executeUpdate();
		tx.commit();
		if(i>0)
			return true;
		return false;
	}
}
