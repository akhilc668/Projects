package com.commonfiles;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.pojo.Alumni;

public class TrackAlumni {

	public static List getAlumni(String cname) {

		Session se = Configure.config();
		Query qr = se.createQuery("from Alumni a where a.status='Accepted' and a.collegename=:x");
		qr.setParameter("x", cname);
		List li = qr.list();
		if (li != null)
			return li;
		return null;
	}

	public static List searchAlumni(int year, String department, String cname) {

		Session se = Configure.config();
		Query qr = se.createQuery(
				"from Alumni a where (a.year=:x and a.status=:z and a.collegename=:w) OR (a.department=:y and a.status=:x and a.collegename=:w) ");
		qr.setParameter("x", year);
		qr.setParameter("y", department);
		qr.setParameter("z", "Accepted");
		qr.setParameter("w", cname);
		List li = qr.list();
		if (li != null)
			return li;
		return null;
	}

	public static List getAlumnis() {

		Session se = Configure.config();
		Query qr = se.createQuery("from Alumni a where a.status=:x").setParameter("x", "Accepted");
		List li = qr.list();
		if (li != null)
			return li;
		return null;
	}

	public static List searchAlumnis(int year, String department, String cName) {

		Session se = Configure.config();
		Query qr = se.createQuery("from Alumni a where (a.year=:x and a.status='Accepted')  OR (a.department=:y and a.status='Accepted') OR (a.collegename=:z and a.status='Accepted')");
		qr.setParameter("x", year);
		qr.setParameter("y", department);
		qr.setParameter("z", cName);
		List li = qr.list();
		if (li != null)
			return li;
		return null;
	}
	
	public static Alumni getAlumniById(int id) {
		Session se=Configure.config();
		List li=se.createQuery("from Alumni a where a.aid=:x").setParameter("x", id).list();
		if(li!=null) {
			Alumni a=(Alumni)li.get(0);
			return a;
		}
		return null;
	}
}
