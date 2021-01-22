package com.admin;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.faculty.Achievements;
import com.pojo.faculty.GuestLecture;
import com.pojo.faculty.PaperPublications;
import com.pojo.faculty.Seminar;

public class ViewBean {
	public static List getSeminar() {
		Session se=Configure.config();
		Query qr=se.createQuery("from Seminar s");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getMarks() {
		Session se=Configure.config();
		Query qr=se.createQuery("from StudentMarks sm");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getPlacement() {
		Session se=Configure.config();
		Query qr=se.createQuery("from Placement p");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getPaper() {
		Session se=Configure.config();
		Query qr=se.createQuery("from PaperPublications p");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getInternship() {
		Session se=Configure.config();
		Query qr=se.createQuery("from Internship i");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getLecture() {
		Session se=Configure.config();
		Query<GuestLecture> qr=se.createQuery("from GuestLecture g");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getEvents() {
		Session se=Configure.config();
		Query qr=se.createQuery("from CollegeEvent ce");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List getAchievement() {
		Session se=Configure.config();
		Query qr=se.createQuery("from Achievements a");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
}
