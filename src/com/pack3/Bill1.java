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
 * Servlet implementation class Bill1
 */
@WebServlet("/Bill1")
public class Bill1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=request.getParameter("pid");
		UserDao val=new UserDao();
		HttpSession ses=request.getSession();
		ses.setAttribute("pid", pid);
		boolean flag=val.fetchType1(pid);
		boolean flag1=val.checkCbc(pid);
		boolean flag2=val.checkCoagulation(pid);
		boolean flag3=val.checkBlood(pid);
		boolean flag4=val.checkUrinalysis(pid);
		if(flag)
		{
			int cost=val.wardCost(pid);
			int cost1=val.departmentCost(pid);
			int cost2=0;
			int cost3=0;
			int cost4=0;
			int cost5=0;
			if(flag1)
			{
				String test="CBC Test";
				cost2=val.labCost(test);
			}
			if(flag2)
			{
				String test="Coagulation testing";
				cost3=val.labCost(test);
			}
			if(flag3)
			{
				String test="Urinalysis";
				cost4=val.labCost(test);
			}
			if(flag4)
			{
				String test="Blood Banking";
				cost5=val.labCost(test);
			}
			int cost6=cost2+cost3+cost4+cost5;
			int cost7=cost6+cost1+cost;
			ses.setAttribute("cost", cost);
			ses.setAttribute("cost1", cost1);
			ses.setAttribute("cost6", cost6);
			ses.setAttribute("cost7", cost7);
			response.sendRedirect("bill2.jsp");
		}
		if(!flag)
		{
			int cost1=val.departmentCost1(pid);
			int cost=0;
			int cost2=0;
			int cost3=0;
			int cost4=0;
			int cost5=0;
			if(flag1)
			{
				String test="CBC Test";
				cost2=val.labCost(test);
			}
			if(flag2)
			{
				String test="Coagulation testing";
				cost3=val.labCost(test);
			}
			if(flag3)
			{
				String test="Urinalysis";
				cost4=val.labCost(test);
			}
			if(flag4)
			{
				String test="Blood Banking";
				cost5=val.labCost(test);
			}
			int cost6=cost2+cost3+cost4+cost5;
			int cost7=cost6+cost1+cost;
			ses.setAttribute("cost", cost);
			ses.setAttribute("cost1", cost1);
			ses.setAttribute("cost6", cost6);
			ses.setAttribute("cost7", cost7);
			response.sendRedirect("bill2.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
