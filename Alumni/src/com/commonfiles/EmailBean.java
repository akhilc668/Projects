package com.commonfiles;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.pojo.Email;

public class EmailBean {
	public static boolean send(Email e) {
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		Object o=se.save(e);
		tx.commit();
		if(o!=null)
			return true;
		return false;
	}
	
	public static List getReceivedEmails(String email) {
		Session se=Configure.config();
		List li=se.createQuery("from Email e where e.eto=:x").setParameter("x", email).list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getSentEmails(String email) {
		Session se=Configure.config();
		List li=se.createQuery("from Email e where e.efrom=:x").setParameter("x", email).list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static Email getmail(int id) {
		Session se=Configure.config();
		List li=se.createQuery("from Email e where e.id=:x").setParameter("x", id).list();
		if(li.size()==1)
			return (Email)li.get(0);
		return null;
	}
}
