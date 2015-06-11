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
 * Servlet implementation class Insert2
 */
@WebServlet("/Insert2")

public class Insert2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String emp=request.getParameter("emp_name");
		String type=request.getParameter("type");
		String sal=request.getParameter("sal");
		String phno=request.getParameter("phno");
		long salary=Long.parseLong(sal);
		HttpSession ses=request.getSession();
		ses.setAttribute("emp", emp);
		ses.setAttribute("type", type);
		ses.setAttribute("salary", salary);
		ses.setAttribute("phno", phno);
		UserDao val=new UserDao();
		boolean flag=val.insertEmp(emp,type,salary,phno);
		ses.setAttribute("flag", flag);
		response.sendRedirect("inserted2.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
