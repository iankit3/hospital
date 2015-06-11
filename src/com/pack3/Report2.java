package com.pack3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pack2.UserDao;

/**
 * Servlet implementation class Report2
 */
@WebServlet("/Report2")
public class Report2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses=request.getSession();
		String pid=(String)ses.getAttribute("pid");
		String a=request.getParameter("pt");
		String b=request.getParameter("aptt");
		String c=request.getParameter("fa");
		String d=request.getParameter("qdd");
		String e=request.getParameter("tt");
		String f=request.getParameter("ttms");
		String g=request.getParameter("rt");
		String h=request.getParameter("fan");
		String i=request.getParameter("faar");
		
		String date=request.getParameter("date");
		float pt=Float.parseFloat(a);
		float aptt=Float.parseFloat(b);
		float fa=Float.parseFloat(c);
		float qdd=Float.parseFloat(d);
		float tt=Float.parseFloat(e);
		float ttms=Float.parseFloat(f);
		float rt=Float.parseFloat(g);
		float fan=Float.parseFloat(h);
		float faar=Float.parseFloat(i);
		UserDao val=new UserDao();
		boolean flag=val.insertCoagulation(pid,pt,aptt,fa,qdd,tt,ttms,rt,fan,faar,date);
		ses.setAttribute("flag", flag);
		response.sendRedirect("insertReport.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
