package com.pack3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pack2.UserDao;


@WebServlet("/InPatient")
public class InPatient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession s21=request.getSession();
		String patient_id=(String)s21.getAttribute("patient_id");
		String department=(String)s21.getAttribute("department");
		String room_no=(String)s21.getAttribute("p4");
		String date_of_admitted=(String)s21.getAttribute("p5");
		String p6=(String)s21.getAttribute("p6");
		long advance=Long.parseLong(p6);
		String ward=(String)s21.getAttribute("ward");
		String date_of_discharge=(String)s21.getAttribute("p7");
		String doctor=request.getParameter("doc");
		UserDao val=new UserDao();
		boolean flag4=val.insertInPatient(patient_id, department, room_no, date_of_admitted, advance, date_of_discharge, doctor,ward);
		s21.setAttribute("flag4", flag4);
		response.sendRedirect("insertIP.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
