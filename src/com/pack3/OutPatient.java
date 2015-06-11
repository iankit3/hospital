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
 * Servlet implementation class OutPatient
 */
@WebServlet("/OutPatient")
public class OutPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession s25=request.getSession();
		String patient_id=(String)s25.getAttribute("patient_id");
		String department=(String)s25.getAttribute("department");
		String date=(String)s25.getAttribute("p3");
		String Case=(String)s25.getAttribute("p2");
		String doctor=request.getParameter("doc");
		UserDao val=new UserDao();
		boolean flag4=val.insertOutPatient(patient_id, Case, date, department, doctor);
		s25.setAttribute("flag4", flag4);
		response.sendRedirect("insertOP.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
