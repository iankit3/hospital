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
<%@include file="Header/index1Header.jsp" %>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.jsp">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Lab Report</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Get Your Lab Report</h1>
<form action="Lab1" method="post">
<table>
<tr>
<td>Patient Id</td>
<td><input type="text" name="pid"></td>
</tr>
<tr>
<td>Phone number:</td>
<td><input type="text" name="phno"></td>
</tr>
<tr>
<td>lab Report:</td>
<td><select name="cat">
<option>CBC Test</option>
<option>Coagulation Testing</option>
<option>Urinalysis</option>
<option>Blood Banking</option>
</select>
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%@include file="Footer/indexFooter.jsp" %>
</body>
</html>