package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.student.Placement;


@WebServlet("/add_placement")
public class AddPlacement extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Placement p=new Placement();
		String department=request.getParameter("department");
		String name=request.getParameter("name");
		String rollnumber=request.getParameter("rollnumber");
		String companyname=request.getParameter("companyname");
		int salary=Integer.parseInt(request.getParameter("package"));
		int studid=Integer.parseInt(request.getParameter("studid"));
		p.setDepartment(department);
		p.setName(name);
		p.setRollNumber(rollnumber);
		p.setCompanyName(companyname);
		p.setSalary(salary);
		p.setStudid(studid);
		boolean status=PlacementBean.save(p);
		if(status)
			response.sendRedirect("add_placement.jsp?msg=placement added successfully");
		else
			response.sendRedirect("add_placement.jsp?msg=placement add failed");
	}

}
