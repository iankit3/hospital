<%@page import="com.pack4.Bean"%>
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
      <li><a href="#">Insert Doctor Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>All Inpatient Detail</h1>
<%
HttpSession s7=request.getSession();
ArrayList<Bean> als2=(ArrayList)s7.getAttribute("als2");
%><br><br><br>
<table border="2" bordercolor="black">
<tr>
<td>Patient ID</td>
<td>Name</td>
<td>Age</td>
<td>Gender</td>
<td>Address</td>
<td>Weight</td>
<td>Phone no.</td>
<td>Department</td>
<td>Room no.</td>
<td>Ward</td>
<td>Date of admitted</td>
<td>Advance</td>
<td>Date of discharge</td>
<td>Consulting</td>
</tr>
<tr>
<% for(Bean ub:als2)
{
%>
<td><%=ub.getPatient_ID()%></td>
<td><%=ub.getName()%></td>
<td><%=ub.getAge()%></td>
<td><%=ub.getSex()%></td>
<td><%=ub.getAddress()%></td>
<td><%=ub.getWeight()%></td>
<td><%=ub.getPhone_no()%></td>
<td><%=ub.getDepartment() %></td>
<td><%=ub.getRoom_no() %></td>
<td><%=ub.getWard()%></td>
<td><%=ub.getDate_of_admitted() %></td>
<td><%=ub.getAdvance() %></td>
<td><%=ub.getDate_of_discharge() %></td>
<td><%=ub.getDoctor() %></td>
</tr>
<%
}
%>
</table>
</div>
<div class="fl_right"><img src="images/demo/most-advanced-hospitals-in-india.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%@include file="Footer/adminfooter.jsp" %>

</body>
</html>