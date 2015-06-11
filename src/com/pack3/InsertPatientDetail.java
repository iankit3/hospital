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
 * Servlet implementation class InsertPatientDetail
 */
@WebServlet("/InsertPatientDetail")
public class InsertPatientDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String a=request.getParameter("age");
		int age=Integer.parseInt(a);
		String sex=request.getParameter("sex");
		String address=request.getParameter("address");
		String weigh=request.getParameter("weight");
		String phone_no=request.getParameter("phone_no");
		String type=request.getParameter("type");
		int weight=Integer.parseInt(weigh);
		HttpSession s3=request.getSession();
		s3.setAttribute("name", name);
		s3.setAttribute("age", age);
		s3.setAttribute("sex", sex);
		s3.setAttribute("address", address);
		s3.setAttribute("weight", weight);
		s3.setAttribute("phone_no", phone_no);
		s3.setAttribute("type", type);
		UserDao val=new UserDao();
		boolean flag1=val.insertPatientDetail(name, age, sex, address, weight, phone_no);
		
		String patient_id=val.getPatient_id(name,phone_no);
		s3.setAttribute("patient_id",patient_id);
		s3.setAttribute("flag1", flag1);
		response.sendRedirect("patient1.jsp");
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
