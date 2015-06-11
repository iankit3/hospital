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
 * Servlet implementation class Report4
 */
@WebServlet("/Report4")
public class Report4 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses=request.getSession();
		String pid=(String)ses.getAttribute("pid");
		String bno=request.getParameter("bno");
		String bg=request.getParameter("bg");
		String hiv=request.getParameter("hiv");
		String hbsag=request.getParameter("hbsag");
		String hcv=request.getParameter("hcv");
		String vdrl=request.getParameter("vdrl");
		String bmp=request.getParameter("bmp");
		String a=request.getParameter("hb");
		String date=request.getParameter("date");
		float hb=Float.parseFloat(a);
		UserDao val=new UserDao();
		boolean flag=val.insertBlood(pid,bno,bg,hiv,hbsag,hcv,vdrl,bmp,hb,date);
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
