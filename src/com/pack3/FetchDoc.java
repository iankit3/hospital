package com.pack3;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pack2.UserDao;


@WebServlet("/FetchDoc")
public class FetchDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s19=request.getSession();
		String department=request.getParameter("p3");
		String room=request.getParameter("room");
		String floor=request.getParameter("floor");
		String ward=request.getParameter("ward");
		String p5=request.getParameter("p5");
		String p6=request.getParameter("p6");
		String p7=request.getParameter("p7");
		String p4=floor.concat(room);
		s19.setAttribute("department", department);
		s19.setAttribute("p4", p4);
		s19.setAttribute("p5", p5);
		s19.setAttribute("p6", p6);
		s19.setAttribute("p7", p7);
		s19.setAttribute("ward", ward);
		UserDao val=new UserDao();
		boolean flag=val.searchRoom(p4);
		s19.setAttribute("flag1", flag);
		ArrayList<String> als5=val.getDoctor(department);
		s19.setAttribute("als5", als5);
		response.sendRedirect("doctor1.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
