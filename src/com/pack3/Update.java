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
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patient_id=request.getParameter("n1");
		String e2=request.getParameter("n2");
		String e3=request.getParameter("n3");
		String e4=request.getParameter("n4");
		String e5=request.getParameter("n5");
		String e6=request.getParameter("n6");
		String e7=request.getParameter("n7");
		String e8=request.getParameter("n8");
		String e9=request.getParameter("n9");
		String e10=request.getParameter("n10");
		String e11=request.getParameter("n11");
		HttpSession s12=request.getSession();
		boolean f4=(Boolean)s12.getAttribute("flag");
		int age=Integer.parseInt(e3);
		int weight=Integer.parseInt(e6);
		UserDao val=new UserDao();
		boolean f=val.deletePatient(patient_id);
		boolean f2=val.insertPatientDetail1(patient_id, e2, age, e4, e5, weight, e7);
		if(f4)
		{
		String e12=request.getParameter("n12");
		String e13=request.getParameter("n13");
		String e14=request.getParameter("n14");
		long advance=Long.parseLong(e11);
		boolean f3=val.insertInPatient(patient_id, e8, e9, e10, advance, e12, e13,e14);
		s12.setAttribute("flag",f);
		s12.setAttribute("flag1",f2);
		s12.setAttribute("flag2",f3);
		response.sendRedirect("edit.jsp");
		}
		else
		{
			boolean f3=val.insertOutPatient(patient_id, e8, e9,e10,e11);
			s12.setAttribute("flag",f);
			s12.setAttribute("flag1",f2);
			s12.setAttribute("flag2",f3);
			response.sendRedirect("edit.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
