package com.commonfiles;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.pojo.Events;

public class AddEventBean {
	public static boolean save(Events e) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=(Object)se.save(e);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		return false;
	}
	
	public static List getEvents() {
		Session se=Configure.config();
		List li=se.createQuery("from Events e").list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getEventsBySearch(String cname,String date,String topic) {
		Session se=Configure.config();
		List li=se.createQuery("from Events e where e.collegename=:x or e.date=:y or e.topic=:z").setParameter("z", topic).setParameter("x", cname).setParameter("y", date).list();
		if(li!=null)
			return li;
		return null;
	}
	

}
