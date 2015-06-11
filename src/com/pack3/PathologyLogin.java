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
 * Servlet implementation class PathologyLogin
 */
@WebServlet("/PathologyLogin")
public class PathologyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession s1=request.getSession();
		s1.setAttribute("username", username);
		s1.setAttribute("password", password);
		UserDao val=new UserDao();
		ArrayList<String> als=val.getPatientId();
		s1.setAttribute("als", als);
		boolean flag=val.validatePathology(username, password);
		s1.setAttribute("flag", flag);
		response.sendRedirect("report.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
