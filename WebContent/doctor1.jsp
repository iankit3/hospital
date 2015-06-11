<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/style.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">

<%
HttpSession s20=request.getSession();
ArrayList<String> als5=(ArrayList)s20.getAttribute("als5");
boolean flag=(Boolean)s20.getAttribute("flag1");
if(!flag)
{
%>
<%@include file="Header/receptionheader.jsp" %>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.html">Home</a></li>
      <li>&#187;</li>
      <li><a href="reception1.jsp">Reception</a></li>
      <li>&#187;</li>
      <li><a href="#">Insert Patient Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Select your consulting Doctor</h1>
<form action="InPatient" method="post">
<table>
<tr>
<td>Consulting:</td>
<td>
<select name="doc">
<option disabled="disabled">--Doctor--</option>
<%
for(String eId:als5)
	{
%>

<option>
<%=eId%>
</option>
<%
}
%>
</td>
</tr>
<tr><td></td>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>
<%@include file="Footer/receptionfooter.jsp" %>
<%
}
else
{
%>
room is already booked
<%
}
%>
</body>
</html>