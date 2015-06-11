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
 * Servlet implementation class Report3
 */
@WebServlet("/Report3")
public class Report3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses=request.getSession();
		String pid=(String)ses.getAttribute("pid");
		String col=request.getParameter("col");
		String app=request.getParameter("app");
		String glu=request.getParameter("glu");
		String bili=request.getParameter("bili");
		String ket=request.getParameter("ket");
		String bl=request.getParameter("bl");
		String a=request.getParameter("sg");
		float sg=Float.parseFloat(a);
		String b=request.getParameter("ph");
		float ph=Float.parseFloat(b);
		String pro=request.getParameter("pro");
		String c=request.getParameter("uro");
		float uro=Float.parseFloat(c);
		String nit=request.getParameter("nit");
		String le=request.getParameter("le");
		String rbc=request.getParameter("rbc");
		String wbc=request.getParameter("wbc");
		String ec=request.getParameter("ec");
		String ba=request.getParameter("ba");
		String date=request.getParameter("date");
		UserDao val=new UserDao();
		boolean flag=val.insertUrinalysis(pid,app,glu,bili,ket,bl,sg,ph,pro,uro,nit,le,rbc,wbc,ec,ba,col,date);
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
