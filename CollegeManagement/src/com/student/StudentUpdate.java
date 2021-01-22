package com.student;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.configure.FileUpload;
import com.pojo.student.Student;

import javax.servlet.annotation.WebServlet;


@WebServlet("/student_update")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class StudentUpdate extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);
		Student s=new Student();
		int studid=Integer.parseInt(request.getParameter("studid"));
		String firstname=request.getParameter("firstName");
		String lastname=request.getParameter("lastName");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String mobile=request.getParameter("mobile");
		String rollnumber=request.getParameter("rollnumber");
		String department=request.getParameter("department");
		String address=request.getParameter("address");
		int pincode=Integer.parseInt(request.getParameter("pincode"));
		String nationality=request.getParameter("nationality");
		float inter_percentage=Float.parseFloat(request.getParameter("inter"));
		float ssc_percentage=Float.parseFloat(request.getParameter("ssc"));
		s.setStudent_id(studid);
		s.setFirstname(firstname);
		s.setLastname(lastname);
		s.setEmail(email);
		s.setPassword(password);
		s.setMobile(mobile);
		s.setRollnumber(rollnumber);
		s.setDepartment(department);
		s.setAddress(address);
		s.setPincode(pincode);
		s.setNationality(nationality);
		s.setInter_percentage(inter_percentage);
		s.setSsc_percentage(ssc_percentage);
		s.setPicture(fileName);
		s=StudentUpdateBean.update(s);
		HttpSession hs=request.getSession();
		if(s!=null) {
			hs.setAttribute("student", s);
			response.sendRedirect("student_profile.jsp?msg=Updated successfully");
		}
		else
			response.sendRedirect("student_update_profile.jsp?msg=Update failed");
		
	}

}
