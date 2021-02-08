package com.annotations;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RowMapping implements RowMapper<Student>
{

	@Override
	public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Student stud=new Student();
		stud.setId(rs.getInt("id"));
		stud.setName(rs.getString("name"));
		stud.setLastname(rs.getString("lastname"));
		
		return stud;
	}

	

}
