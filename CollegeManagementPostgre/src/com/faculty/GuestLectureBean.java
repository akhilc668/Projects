package com.faculty;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;

import com.pojo.faculty.GuestLecture;
import com.pojo.faculty.PaperPublications;

public class GuestLectureBean {

	public static boolean add(GuestLecture glp) {

		Session se = Configure.config();
		Transaction tx = se.beginTransaction();

		Object obj = se.save(glp);
		tx.commit();
		if(obj!=null)
			return true;
		return false;
	}

	public static List<GuestLecture> getLectureById(int fid) {
		Session se=Configure.config();
		Query<GuestLecture> qr=se.createQuery("from GuestLecture i where i.fid=:x");
		qr.setParameter("x", fid);
		List<GuestLecture> li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
}
