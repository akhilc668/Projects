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
import com.pojo.student.Internship;

@WebServlet("/add_internship")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class AddInternship extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);
		Internship i=new Internship();
		String department=request.getParameter("department");
		String name=request.getParameter("name");
		String rollnumber=request.getParameter("rollnumber");
		String topic=request.getParameter("topic");
		String duration=request.getParameter("duration");
		int studid=Integer.parseInt(request.getParameter("studid"));
		i.setDepartment(department);
		i.setName(name);
		i.setRollnumber(rollnumber);
		i.setTopic(topic);
		i.setDuration(duration);
		i.setFilename(fileName);
		i.setStudid(studid);
		boolean status=InternshipBean.save(i);
		if(status)
			response.sendRedirect("add_internship.jsp?msg=internship added successfully");
		else
			response.sendRedirect("add_internship.jsp?msg=internship add failed");
		
	}

}
