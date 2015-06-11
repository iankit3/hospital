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
import com.pack4.ReportBean;

/**
 * Servlet implementation class Lab1
 */
@WebServlet("/Lab1")
public class Lab1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=request.getParameter("pid");
		String phno=request.getParameter("phno");
		String cat=request.getParameter("cat");
		HttpSession ses=request.getSession();
		ses.setAttribute("cat", cat);
		UserDao val=new UserDao();
		boolean flag=val.validatePatient(pid,phno);
		if("CBC Test".equalsIgnoreCase(cat))
		{
			boolean flag1= val.checkCbc(pid);
			ArrayList<ReportBean> als=val.getCbc(pid);

			ses.setAttribute("flag1", flag1);
			ses.setAttribute("als", als);
		}
		if("Coagulation Testing".equalsIgnoreCase(cat))
		{
			boolean flag1= val.checkCoagulation(pid);
			ArrayList<ReportBean> als=val.getCoagulation(pid);

			ses.setAttribute("flag1", flag1);
			ses.setAttribute("als", als);
		}
		if("Urinalysis".equalsIgnoreCase(cat))
		{
			boolean flag1= val.checkUrinalysis(pid);
			ArrayList<ReportBean> als=val.getUrinalysis(pid);

			ses.setAttribute("flag1", flag1);
			ses.setAttribute("als", als);
		}
		if("Blood Banking".equalsIgnoreCase(cat))
		{
			boolean flag1= val.checkBlood(pid);
			ArrayList<ReportBean> als=val.getBlood(pid);

			ses.setAttribute("flag1", flag1);
			ses.setAttribute("als", als);
		}
		ses.setAttribute("flag", flag);
		response.sendRedirect("report2.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
