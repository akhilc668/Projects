package com.alumni;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.commonfiles.FileUpload;
import com.pojo.Alumni;

@WebServlet("/alumni_update")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class AlumniUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);
		
		int id=Integer.parseInt(request.getParameter("studid"));
		String status=request.getParameter("status");
		String password=request.getParameter("password");
		String firstname=request.getParameter("firstName");
		String lastname=request.getParameter("lastName");
		String email=request.getParameter("email");
		String number=request.getParameter("mobile");
		String roll=request.getParameter("rollnumber");
		String collegename=request.getParameter("collegename");
		String dept=request.getParameter("department");
		int year=Integer.parseInt(request.getParameter("year"));
		String address=request.getParameter("address");
		
		Alumni al=new Alumni();
		al.setAid(id);
		al.setPassword(password);
		al.setStatus(status);
		al.setFirstname(firstname);
		al.setLastname(lastname);
		al.setEmail(email);
		al.setMobile(number);
		al.setRollnumber(roll);
		al.setCollegename(collegename);
		al.setDepartment(dept);
		al.setYear(year);
		al.setAddress(address);
		al.setPicture(fileName);
		Alumni alumni=AlumniBean.update(al);
		HttpSession hs=request.getSession();
		if(alumni!=null) {
			hs.setAttribute("alumni", alumni);
			response.sendRedirect("alumni_update_profile.jsp?msg=successfull");
		}else
			response.sendRedirect("alumni_update_profile.jsp?msg=failed");
	}

}
