package com.annotations;

import java.sql.Types;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.jdbc.object.SqlUpdate;

public class Operations
{
	JdbcTemplate jdbcTemplate;
	DataSource datasource;
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate,DataSource datasource) {
		this.jdbcTemplate = jdbcTemplate;
		this.datasource=datasource;
	}
	
	public void insert(int id,String name,String lastname)
	{
		SimpleJdbcInsert ins=new SimpleJdbcInsert(jdbcTemplate).withTableName("student");
		HashMap<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
		map.put("name",name);
		map.put("lastname", lastname);
		int i=ins.execute(map);
		if(i>0)
			System.out.println("Success");
		
		
	}
	public void update(Integer id,String name,String lastname)
	{
		String sql="update student set name=? ,lastname=? where id=?";
		SqlUpdate up=new SqlUpdate(datasource, sql);
		up.declareParameter(new SqlParameter("name", Types.VARCHAR));
	     up.declareParameter(new SqlParameter("lastname", Types.VARCHAR));
	     up.declareParameter(new SqlParameter("id", Types.INTEGER));
	      up.compile();
	      
	    int i=  up.update(name.toString(),lastname.toString(),id.intValue());
	    if(i>0)
	    System.out.println("Updated");
		
	}
	public void delet(int id)
	{
		String sql="delete from student where id=?";
		int i=jdbcTemplate.update(sql,id);
		if(i>0)
			System.out.println("Deleted ");
	}
	public void display(int id)
	{
		String sql="select * from student where id=?";
	List<Student> li=	jdbcTemplate.query(sql, new RowMapping(),id);
		Iterator<Student> it=li.iterator();
		while(it.hasNext())
		{
			Student ss=it.next();
			System.out.println(ss.getName()+"-" +ss.getLastname());
		}
	}
}
