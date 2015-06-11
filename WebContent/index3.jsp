<%@page import="com.pack2.UserDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
 <%
 	HttpSession ses=request.getSession();
 HttpSession ses1=request.getSession();
	UserDao val=new UserDao();
 	ArrayList<String> als=val.getHead();
%>

<marquee onmouseover="this.stop();" onmouseout="this.start();">
<table bordercolor="black" border="2">
<tr>
<td>Notice</td>

  <%for(String ub:als) {
  %>
  <td><form action="Index2" method="post" ><input type="hidden" name="headline" value="<%=ub%>">||<%=ub %>||<input type="submit" value="       " style="background: url('images/LinkButton.png') no-repeat;"></form></td>  
<%
  }%>
</tr>
</table>
</marquee>
</body>
</html>