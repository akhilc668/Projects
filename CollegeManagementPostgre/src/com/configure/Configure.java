package com.configure;


import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.pojo.faculty.Achievements;
import com.pojo.faculty.Faculty;
import com.pojo.faculty.GuestLecture;
import com.pojo.faculty.PaperPublications;
import com.pojo.faculty.Seminar;
import com.pojo.student.CollegeEvent;
import com.pojo.student.Internship;
import com.pojo.student.Placement;
import com.pojo.student.Student;
import com.pojo.student.StudentMarks;

public class Configure {
	public static Session config() {
		Properties p=new Properties();
		p.setProperty("hibernate.connection.driver_class", "org.postgresql.Driver");
		p.setProperty("hibernate.connection.url", "jdbc:postgresql://localhost:5432/collegemanagement");
		p.setProperty("hibernate.connection.username", "postgres");
		p.setProperty("hibernate.connection.password", "root");
		p.setProperty("hibernate.dialet", "org.hibernate.dialect.PostgreSQLDialect");
		/*
		 * p.setProperty("hibernate.connection.driver_class",
		 * "com.mysql.cj.jdbc.Driver"); p.setProperty("hibernate.connection.url",
		 * "jdbc:mysql://localhost:3306/collegemanagement");
		 * p.setProperty("hibernate.connection.user", "root");
		 * p.setProperty("hibernate.connection.password", "root");
		 * p.setProperty("hibernate.dialet", "org.hibernate.dialect.MySQLDialect");
		 */
		p.setProperty("hibernate.show_sql", "true");
		p.setProperty("hibernate.hbm2ddl.auto", "update");
		Configuration c=new Configuration();
		c.addAnnotatedClass(Student.class);
		c.addAnnotatedClass(Placement.class);
		c.addAnnotatedClass(StudentMarks.class);
		c.addAnnotatedClass(Internship.class);
		c.addAnnotatedClass(CollegeEvent.class);
		c.addAnnotatedClass(Faculty.class);
		c.addAnnotatedClass(Seminar.class);
		c.addAnnotatedClass(Achievements.class);
		c.addAnnotatedClass(PaperPublications.class);
		c.addAnnotatedClass(GuestLecture.class);
		SessionFactory sf=c.addProperties(p).buildSessionFactory();
		return sf.openSession();
	}
}
