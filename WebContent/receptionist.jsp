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
ses.setMaxInactiveInterval(600);
if(ses.getAttribute("username")==null || ses==null)
{
	request.getRequestDispatcher("administration.jsp").forward(request,response);
}
%>
<%@include file="Header/adminheader.jsp" %>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.html">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Administration</a></li>
      <li>&#187;</li>
      <li><a href="#">Insert receptionist Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Receptionist Registration Page</h1>
<form action="Recep" method="post">
<table>
<tr>
<td>Receptionist name</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Gender:</td>
<td><select  name="sex" ><option disabled="disabled">--sex--</option>
<option>Male</option>
<option>Female</option>
</select></td>
</tr>
<tr>
<td>Phone number:</td>
<td><input type="text" name="phno"></td>
</tr>
<tr>
<td>Email:</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="text" name="pass"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Register"></td>
</tr>
</table>
</form>
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%@include file="Footer/adminfooter.jsp" %>

</body>
</html>