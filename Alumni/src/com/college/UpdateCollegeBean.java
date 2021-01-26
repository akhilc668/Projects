package com.college;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.commonfiles.Configure;
import com.pojo.College;

public class UpdateCollegeBean {

	public static College update(College c) {

		Session se = Configure.config();
		Transaction tx = se.beginTransaction();
		College cl = (College) se.merge(c);
		tx.commit();
		if (cl != null)
			return cl;
		return null;
	}

}
