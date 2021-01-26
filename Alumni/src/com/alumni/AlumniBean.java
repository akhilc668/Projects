package com.alumni;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.commonfiles.Configure;
import com.pojo.Alumni;
import com.pojo.College;


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
		List li= qe.list();
		tx.commit();
		se.close();
		if(li.size()==1)
			return (Alumni)li.get(0);
		return null;		
	}
	
	public static Alumni updatePresent(String description,String present,int id)
	{
		Session se=Configure.config();
		Transaction trx=se.beginTransaction();
		Alumni al=se.load(Alumni.class,id);
		al.setDescription(description);
		al.setPresent(present);
		se.update(al);
		trx.commit();
		al = se.load(Alumni.class, id);
		if(al!=null)
		return al;
		return null;
	}
	
	public static Alumni update(Alumni al)
	{
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Alumni alumni=(Alumni) se.merge(al);
		tx.commit();
		if(alumni!=null)
			return alumni;
		return null;
	}
}
