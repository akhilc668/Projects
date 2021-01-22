package com.faculty;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.faculty.PaperPublications;
import com.pojo.student.Internship;

public class PaperPublicationBean {

	public static boolean add(PaperPublications pp) {

		Session se = Configure.config();
		Transaction tx = se.beginTransaction();		
		Object obj = se.save(pp);
		tx.commit();
		if(obj!=null)
			return true;
		return false;
	}

	public static List<PaperPublications> getPaperById(int fid) {
		Session se=Configure.config();
		Query<PaperPublications> qr=se.createQuery("from PaperPublications i where i.fid=:x");
		qr.setParameter("x", fid);
		List<PaperPublications> li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
}
