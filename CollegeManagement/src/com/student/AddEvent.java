package com.student;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.configure.FileUpload;
import com.pojo.student.CollegeEvent;
import com.pojo.student.Internship;

@WebServlet("/add_event")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class AddEvent extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);
		CollegeEvent ce=new CollegeEvent();
		String department=request.getParameter("department");
		String name=request.getParameter("name");
		String rollnumber=request.getParameter("rollnumber");
		String eventname=request.getParameter("eventname");
		String topic=request.getParameter("topic");
		int studid=Integer.parseInt(request.getParameter("studid"));
		ce.setDepartment(department);
		ce.setName(name);
		ce.setRollnumber(rollnumber);
		ce.setEventname(eventname);
		ce.setTopic(topic);
		ce.setFilename(fileName);
		ce.setStudid(studid);
		boolean status=CollegeEventBean.save(ce);
		if(status)
			response.sendRedirect("add_event.jsp?msg=event added successfully");
		else
			response.sendRedirect("add_event.jsp?msg=event add failed");
		
	}

}
