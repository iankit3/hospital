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
 * Servlet implementation class Recep
 */
@WebServlet("/Recep")
public class Recep extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses=request.getSession();
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String email=request.getParameter("email");
		String phno=request.getParameter("phno");
		String pass=request.getParameter("pass");
		String a=name.substring(0, 2);
		String b=email.substring(0,2);
		String c=phno.substring(8,10);
		String id=a.concat(b.concat(c));
		UserDao val=new UserDao();
		boolean flag=val.insertRecep(id,email,pass,name,phno,sex);
		ses.setAttribute("flag", flag);
		ses.setAttribute("id", id);
		response.sendRedirect("registered.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
