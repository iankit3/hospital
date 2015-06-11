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

/**
 * Servlet implementation class ChooseDoc
 */
@WebServlet("/ChooseDoc")
public class ChooseDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s23=request.getSession();
		String department=request.getParameter("p4");
		String p3=request.getParameter("p3");
		String p2=request.getParameter("p2");
		String patient_id=request.getParameter("p1");
		s23.setAttribute("department", department);
		s23.setAttribute("patient_id", patient_id);
		s23.setAttribute("p3", p3);
		s23.setAttribute("p2", p2);
		UserDao val=new UserDao();
		ArrayList<String> als5=val.getDoctor(department);
		s23.setAttribute("als5", als5);
		response.sendRedirect("doctor2.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
