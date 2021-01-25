package com.college;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.commonfiles.Configure;
import com.pojo.College;

public class CollegeBean {

	public static boolean register(College c) {
		
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=se.save(c);
		tx.commit();
		se.close();
		if(o!=null)
			return true;
		else
			return false;
		
	}

	public static College login(String email, String password) {
		
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Query qe=se.createQuery(" from College c where c.email=:x and c.password =:y and c.status=:z");
		qe.setParameter("x", email);
		qe.setParameter("y", password);
		qe.setParameter("z","Accepted");
		List li= qe.list();
		tx.commit();
		se.close();
		if(li.size()==1)
			return (College)li.get(0);
		else
			return null;
	}

		

}
