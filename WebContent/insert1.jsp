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
<%@include file="Header/adminheader.jsp" %>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.jsp">Home</a></li>
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
  <h1>Doctor Registration Page</h1>
<form action="Insert1" method="post">
<table>
<tr>
<td>Doctor name</td>
<td><input type="text" name="doctor_name"></td>
</tr>
<tr>
<td>Specialist in:</td>
<td><select  name="department" ><option disabled="disabled">--Department--</option>
<option>Cardiology</option>
<option>Gynecology</option>
<option>Pediatrics</option>
<option>Dentistry</option>
<option>Dermatology</option>
<option>Physiotherapy</option>
<option>Diabetes</option>
<option>Hematology</option>
<option>Neurology</option>
<option>kidney and urology</option>
<option>lungs</option>
<option>rheumatic</option>
<option>orthopedics</option>
</select></td>
</tr>
<tr>
<td>Phone number:</td>
<td><input type="text" name="phno"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Save"></td>
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