package com.commonfiles;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.pojo.Events;

public class AddEventBean {
	static String date1 = "";
	static {
		java.time.LocalDate date=java.time.LocalDate.now();
		date1 = date.toString();
	}

	public static boolean save(Events e) {
		Session se = Configure.config();
		Transaction tx = se.beginTransaction();
		Object o = (Object) se.save(e);
		tx.commit();
		se.close();
		if (o != null)
			return true;
		return false;
	}

	public static List getEvents() {
		Session se = Configure.config();
		List li = se.createQuery("from Events e where e.date > :x").setParameter("x", date1).list();
		if (li != null)
			return li;
		return null;
	}

	public static List getEventsBySearch(String cname, String date, String topic) {
		Session se = Configure.config();
		List li = se.createQuery(
				"from Events e where (e.collegename=:x and e.date > :w) or e.date=:y or (e.topic=:z and e.date > :w)")
				.setParameter("z", topic).setParameter("x", cname).setParameter("y", date).setParameter("w", date1).list();
		if (li != null)
			return li;
		return null;
	}

}
