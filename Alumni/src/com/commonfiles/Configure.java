package com.commonfiles;


import java.util.Properties;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.pojo.Alumni;
import com.pojo.College;
import com.pojo.Email;
import com.pojo.Events;



public class Configure {
	public static Session config() {
		Properties p=new Properties();
		p.setProperty("hibernate.connection.driver_class", "com.mysql.cj.jdbc.Driver");
		p.setProperty("hibernate.connection.url", "jdbc:mysql://localhost:3306/alumnimanagement");
		p.setProperty("hibernate.connection.user", "root");
		p.setProperty("hibernate.connection.password", "root");
		p.setProperty("hibernate.show_sql", "true");
		p.setProperty("hibernate.dialet", "org.hibernate.dialect.MySQLDialect");
		p.setProperty("hibernate.hbm2ddl.auto", "update");
		Configuration c=new Configuration();
		c.addAnnotatedClass(Alumni.class);
		c.addAnnotatedClass(College.class);
		c.addAnnotatedClass(Events.class);
		c.addAnnotatedClass(Email.class);
		SessionFactory sf=c.addProperties(p).buildSessionFactory();
		return sf.openSession();
	}
}
