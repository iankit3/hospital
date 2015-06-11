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
 * Servlet implementation class Report1
 */
@WebServlet("/Report1")
public class Report1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession ses=request.getSession();
		String pid=(String)ses.getAttribute("pid");
		String a=request.getParameter("wbc");
		String b=request.getParameter("rbc");
		String c=request.getParameter("hbhgb");
		String d=request.getParameter("hct");
		String e=request.getParameter("mcv");
		String f=request.getParameter("mch");
		String g=request.getParameter("mchc");
		String h=request.getParameter("rdw");
		String i=request.getParameter("pc");
		String j=request.getParameter("mpv");
		String k=request.getParameter("neut");
		String l=request.getParameter("lymph");
		String m=request.getParameter("mono");
		String n=request.getParameter("eos");
		String o=request.getParameter("baso");
		String p=request.getParameter("neutA");
		String q=request.getParameter("lymphA");
		String r=request.getParameter("monoA");
		String s=request.getParameter("eosA");
		String t=request.getParameter("basoA");
		String u=request.getParameter("rc");
		String date=request.getParameter("date");
		float wbc=Float.parseFloat(a);
		float rbc=Float.parseFloat(b);
		float hbhgb=Float.parseFloat(c);
		float hct=Float.parseFloat(d);
		float mcv=Float.parseFloat(e);
		float mch=Float.parseFloat(f);
		float mchc=Float.parseFloat(g);
		float rdw=Float.parseFloat(h);
		float pc=Float.parseFloat(i);
		float mpv=Float.parseFloat(j);
		float neut=Float.parseFloat(k);
		float lymph=Float.parseFloat(l);
		float mono=Float.parseFloat(m);
		float eos=Float.parseFloat(n);
		float baso=Float.parseFloat(o);
		float neutA=Float.parseFloat(p);
		float lymphA=Float.parseFloat(q);
		float monoA=Float.parseFloat(r);
		float eosA=Float.parseFloat(s);
		float basoA=Float.parseFloat(t);
		float rc=Float.parseFloat(u);
		UserDao val=new UserDao();
		boolean flag=val.insertCbc(pid,wbc,rbc,hbhgb,hct,mcv,mch,mchc,rdw,pc,mpv,neut,lymph,mono,eos,baso,neutA,lymphA,monoA,eosA,basoA,rc,date);
		ses.setAttribute("flag", flag);
		response.sendRedirect("insertReport.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
