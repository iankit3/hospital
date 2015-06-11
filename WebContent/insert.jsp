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
<div class="wrapper col5">
  <div id="container">
    <div id="content">
    <h1>Patient Detail</h1>
<form action="InsertPatientDetail" method="post">
<table>
<tr>
<td>Patient Name:</td>
<td><input type="text" name="name"></td>
</tr>
<tr>
<td>Age:</td>
<td><input type="text" name="age"></td>
</tr>
<tr>
<td>Sex:</td>
<td><select name="sex">
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</td>
</tr>
<tr>
<td>Address:</td>
<td><input type="text" name="address"></td>
</tr>
<tr>
<td>Weight:</td>
<td><input type="text" name="weight"></td>
</tr>
<tr>
<td>Phone no.:</td>
<td><input type="text" name="phone_no"></td>
</tr>
<tr>
<td>Select the Patient type:</td>
<td><select name="type">
<option disabled="disabled">--type--</option>
<option>inpatient</option>
<option>outpatient</option>
</select>
</td>
</tr>
</table>
<input type="submit" value="Save">
</form><p></p>
</div>
<div class="fl_right"><img src="images/demo/FrontDesk.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>
<%@include file="Footer/receptionfooter.jsp" %>
</body>
</html>