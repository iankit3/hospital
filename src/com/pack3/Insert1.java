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
 * Servlet implementation class Insert1
 */
@WebServlet("/Insert1")
public class Insert1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String doctor=request.getParameter("doctor_name");
		String dept=request.getParameter("department");
		String phno=request.getParameter("phno");
		String a=dept.substring(0,2);
		String b=doctor.substring(4,6);
		String c=phno.substring(8,10);
		String did=a.concat(b.concat(c));
		HttpSession ses=request.getSession();
		ses.setAttribute("doctor", doctor);
		ses.setAttribute("dept", dept);
		ses.setAttribute("did", did);
		UserDao val=new UserDao();
		boolean flag=val.insertDoc(did,doctor,dept,phno);
		ses.setAttribute("flag", flag);
		response.sendRedirect("inserted1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
