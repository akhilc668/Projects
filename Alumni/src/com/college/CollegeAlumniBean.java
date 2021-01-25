package com.college;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.commonfiles.Configure;



public class CollegeAlumniBean {

	public static List getRegisteredAlumni()
	{
		Session se=Configure.config();
		Transaction tx=se.beginTransaction();
		List li=se.createQuery("from Alumni a where a.status=:x").setParameter("x", "none").list();
		if(li!=null)
			return  li;
		else
		return null;		
	}
	
}
