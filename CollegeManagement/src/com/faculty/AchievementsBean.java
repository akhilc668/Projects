package com.faculty;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.faculty.Achievements;
import com.pojo.faculty.Seminar;


public class AchievementsBean {

	public static boolean add(Achievements ap) {
		
		Session se = Configure.config();
		Transaction tx = se.beginTransaction();
		Object o = (Object)se.save(ap);
		tx.commit();
		if(o!=null)
			return true;
		return false;
	}

	public static List<Achievements> getAchievementById(int fid) {
		Session se=Configure.config();
		Query<Achievements> qr=se.createQuery("from Achievements s where s.fid=:x");
		qr.setParameter("x", fid);
		List<Achievements> li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
}
