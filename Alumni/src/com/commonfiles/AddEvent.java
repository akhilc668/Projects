package com.commonfiles;

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

import com.pojo.Events;


@WebServlet("/add_event")
@MultipartConfig(fileSizeThreshold = 1024*1024*2,maxFileSize = 1024*1024*10,maxRequestSize = 1024*1024*50)
public class AddEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		Part part=request.getPart("file");
		String fileName = FileUpload.getFileNames(part);
		ServletContext context = getServletContext();
		String path=context.getInitParameter("file-upload");
		System.out.println(path);
		String savePath =path+File.separator+fileName;
		File fileSaveDir =new File(savePath);
		part.write(savePath+File.separator);
		
		String eventname=request.getParameter("eventname");
		String topic=request.getParameter("topic");
		String date=request.getParameter("date");
		String collegename=request.getParameter("collegename");
		String pages=request.getParameter("page");
		Events e=new Events();
		e.setCollegename(collegename);
		e.setDate(date);
		e.setEname(eventname);
		e.setTopic(topic);
		e.setFilename(fileName);
		
		boolean status=AddEventBean.save(e);
		if(status)
			response.sendRedirect("add_event.jsp?page="+pages+"&msg=event added successfully");
		else
			response.sendRedirect("add_event.jsp?page="+pages+"&msg=event add failed");
		
	}

}
