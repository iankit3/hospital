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
import com.pack4.Bean;

/**
 * Servlet implementation class Edit
 */
@WebServlet("/FetchDetail")
public class FetchDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String patient_id=request.getParameter("p_id");
		HttpSession s5=request.getSession();
		UserDao val=new UserDao();
		boolean flag=val.fetchType1(patient_id);
		s5.setAttribute("flag", flag);
		if(flag)
		{
		ArrayList<Bean> als3=val.getAllInPatientDetail(patient_id);
		s5.setAttribute("als3", als3);
		response.sendRedirect("editAndSave.jsp");
		}
		else
		{
			ArrayList<Bean> als3=val.getAllOutPatientDetail(patient_id);
			s5.setAttribute("als3", als3);
			response.sendRedirect("editAndSave1.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
