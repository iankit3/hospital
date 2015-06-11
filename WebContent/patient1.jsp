
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="javascript" type="text/javascript" src="js/datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<%
HttpSession s16=request.getSession();
String type=(String)s16.getAttribute("type");
String patient_id=(String)s16.getAttribute("patient_id");
boolean flag=(Boolean)s16.getAttribute("flag1");
s16.setAttribute("patient_id",patient_id);
int count=(Integer)s16.getAttribute("count");
if(flag)
{
if(type.equalsIgnoreCase("inpatient"))
{
%>
<%@include file="Header/receptionheader.jsp" %>

<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.jsp">Home</a></li>
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
<form action="FetchDoc" method="post">
<table>
<tr>
<td>Patient_Id:</td>
<td><input type="text" name="p1" value="<%=patient_id%>" ></td>
</tr>
<tr>
<td>Department:</td>
<td><select  name="p3" ><option disabled="disabled">--Department--</option>
<option>Cardiology</option>
<option>Gynecology</option>
<option>Pediatrics</option>
<option>Dentistry</option>
<option>Dermatology</option>
<option>Physiotherapy</option>
<option>Diabetics</option>
<option>Hematology</option>
<option>Neurology</option>
<option>kidney and urology</option>
<option>lungs</option>
<option>rheumatic</option>
<option>orthopedics</option>
</select></td>
</tr>
<tr>
<td>Room number:</td>
<td>floor:<select name="floor">
<option>G</option>
<option>1</option>
<option>2</option>
<option>3</option>
</select>
room:<select name="room">
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
</select></td>
</tr>
<tr>
<td>Ward Type:</td>
<td><select name="ward">
<option>Class C</option>
<option>Class B2</option>
<option>Class B1</option>
<option>Class A1</option>
<option>Surgery</option>
</select>
</tr>
<tr>
<td>Date of admitted:</td>
<td><input id="demo1" type="text" name="p5" size="25"><a href="javascript:NewCal('demo1','ddmmmyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
</tr>
<tr>
<td>Advance:</td>
<td><input type="text" name="p6" ></td>
</tr>
<tr>
<td>Date of discharge:</td>
<td><input id="demo2" type="text" name="p7" size="25"><a href="javascript:NewCal('demo2','ddmmmyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
</tr>
<tr><td></td>
<td>
<input type="submit" value="Save">
</td>
</tr></table>
</form>
</div>
<div class="fl_right"><img src="images/demo/DNS14_banner2.jpg" alt="" /></div> 
<br class="clear" /> 
  </div>
</div>
<%@include file="Footer/receptionfooter.jsp" %>

<%
}
if(type.equalsIgnoreCase("outpatient"))
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
<div class="wrapper col5">
  <div id="container">
    <div id="content">
    <h1>Patient Detail</h1>
<form action="ChooseDoc" method="post">
<table>
<tr>
<td>Patient_Id:</td>
<td><input type="text" name="p1" value="<%=patient_id%>" ></td>
</tr>
<tr>
<td>Case:</td>
<td>
<select name="p2" ><option disabled="disabled">--Case--</option>
<option>New</option>
<option>Old</option>
</select>
</td>
</tr>
<tr>
<td>Date
<td><input id="demo3" type="text" name="p3" size="25"><a href="javascript:NewCal('demo3','ddmmmyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
</tr>
<tr>
<td>Department:</td>
<td><select  name="p4" ><option disabled="disabled">--Department--</option>
<option>Cardiology</option>
<option>Gynecology</option>
<option>Pediatrics</option>
<option>Dentistry</option>
<option>Dermatology</option>
<option>Physiotherapy</option>
<option>Diabetics</option>
<option>Hematology</option>
<option>Neurology</option>
<option>kidney and urology</option>
<option>lungs</option>
<option>rheumatic</option>
<option>orthopedics</option>
</select></td>
</tr>
<tr><td></td>
<td>
<input type="submit" value="Save">
</td>
</tr>
</table>
</form>
</div>
<div class="fl_right"><img src="images/demo/Patient-Access-Workflow.jpg" alt="" /></div > 
  </div>
   <br class="clear" />
</div>
<%@include file="Footer/indexFooter.jsp" %>

<%
 }
}
 
 else
 response.sendRedirect("insert.jsp");
 %>
</table>
</body>
</html>