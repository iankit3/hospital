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
 * Servlet implementation class IpOrOpCheck
 */
@WebServlet("/IpOrOpCheck")
public class IpOrOpCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=request.getParameter("pid");
		HttpSession s18=request.getSession();
		s18.setAttribute("pid", pid);
		UserDao val=new UserDao();
		boolean type1=(Boolean)val.fetchType1(pid);
		boolean type2=(Boolean)val.fetchType2(pid);
		s18.setAttribute("type1", type1);
		s18.setAttribute("type2", type2);
		if(type1)
		{
			String doc=val.doctorCall1(pid);
			s18.setAttribute("doc", doc);
		}
		if(type2)
		{
			String doc=val.doctorCall2(pid);
			s18.setAttribute("doc", doc);
		}
		int weight=val.weight(pid);
		s18.setAttribute("weight", weight);
		response.sendRedirect("report.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
