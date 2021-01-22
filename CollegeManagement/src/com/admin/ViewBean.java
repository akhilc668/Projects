package com.admin;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;

import com.configure.Configure;
import com.pojo.faculty.GuestLecture;

public class ViewBean {
	
	public static List getSeminar() {
		Session se=Configure.config();
		Query qr=se.createQuery("from Seminar s");
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
	
	public static List searchSeminar(String date,String topic,String place,String name) {
		Session se=Configure.config();
		Query qr=se.createQuery("from Seminar s where s.date=:x  OR s.topic=:y OR s.place_of_seminar=:z OR s.name=:a");
		qr.setParameter("x", date);
		qr.setParameter("y", topic);
		qr.setParameter("z", place);
		qr.setParameter("a", name);
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
	
	public static List searchMarks(String name,String rollnumber,String year) {
		Session se=Configure.config();
		Query qr=se.createQuery("from StudentMarks m where m.name=:x OR m.rollnumber=:y OR m.year=:z");
		qr.setParameter("x", name);
		qr.setParameter("y", rollnumber);
		qr.setParameter("z", year);
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
	
	public static List searchPlacement(String name,String rollnumber,String companyname) {
		Session se=Configure.config();
		Query qr=se.createQuery("from Placement p where p.name=:x OR p.rollNumber=:y OR p.companyName=:z");
		qr.setParameter("x", name);
		qr.setParameter("y", rollnumber);
		qr.setParameter("z", companyname);
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
	public static List searchPaper(String date,String topic,String name) {
		Session se=Configure.config();
		Query qr=se.createQuery("from PaperPublications p where p.date=:x  OR p.topic=:y OR p.name=:z");
		qr.setParameter("x", date);
		qr.setParameter("y", topic);
		qr.setParameter("z", name);
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
	
	public static List searchInternship(String name,String rollnumber,String topic) {
		Session se=Configure.config();
		Query qr=se.createQuery("from Internship i where  i.rollnumber=:x  OR i.topic=:y OR i.name=:z");
		qr.setParameter("x", rollnumber);
		qr.setParameter("y", topic);
		qr.setParameter("z", name);
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
	
	public static List searchLecture(String date,String topic,String name) {
		Session se=Configure.config();
		Query<GuestLecture> qr=se.createQuery("from GuestLecture g where g.date_of_event=:x OR g.topic=:y OR g.name=:z");
		qr.setParameter("x", date);
		qr.setParameter("y", topic);
		qr.setParameter("z", name);
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
	
	public static List searchEvents(String name,String rollnumber,String eventname) {
		Session se=Configure.config();
		Query qr=se.createQuery("from CollegeEvent e where e.name=:x OR e.rollnumber=:y OR e.eventname=:z");
		qr.setParameter("x", name);
		qr.setParameter("y", rollnumber);
		qr.setParameter("z", eventname);
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
	public static List searchAchievement(String name, String department) {
		Session se=Configure.config();
		Query qr=se.createQuery("from Achievements a where a.name=:x OR a.department=:y");
		qr.setParameter("x", name);
		qr.setParameter("y", department);
		List li=qr.list();
		if(li!=null)
			return li;
		return null;
	}
}
