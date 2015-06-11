<%@page import="com.pack4.Bean"%>
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
      <li><a href="#">Update Patient Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
    <h1>Patient Update</h1>
<%
HttpSession s11=request.getSession();
ArrayList<Bean> als=(ArrayList)s11.getAttribute("als3");
for(Bean bn: als)
{
%>
<form action="Update" method="post">
<table>
<tr>
<td>PATIENT ID:</td><td><input type="text" value="<%=bn.getPatient_ID()%>" name="n1" readonly="readonly"></td>
</tr>
<tr>
<td>PATIENT NAME:</td><td><input type="text" value="<%=bn.getName()%>" name="n2" readonly="readonly"></td>
</tr>
<tr>
<td>PATIENT AGE:</td><td><input type="text" value="<%=bn.getAge()%>" name="n3"></td>
</tr>
<tr>
<td>PATIENT SEX:</td><td><select name="n4" ><option><%=bn.getSex()%></option>
<option>Female</option>
<option>Male</option></td>
</tr>
<tr>
<td>PATIENT ADDRESS:</td><td><input type="text" value="<%=bn.getAddress()%>" name="n5"></td>
</tr>
<tr>
<td>PATIENT WEIGHT:</td><td><input type="text" value="<%=bn.getWeight()%>" name="n6"></td>
</tr>
<tr>
<td>PATIENT PHONE NUMBER:</td><td><input type="text" value="<%=bn.getPhone_no()%>" name="n7" readonly="readonly"></td>
</tr>
<tr>
<td>CASE</td><td><input type="text" value="<%=bn.getCase()%>" name="n8" ></td>
</tr>
<tr>
<td>DATE</td><td><input type="text" value="<%=bn.getDate()%>" name="n9"></td>
</tr>
<tr>
<td>PATIENT DEPARTMENT:</td><td><input type="text" name="n10" value="<%=bn.getDepartment()%>" readonly="readonly"></td>
</tr>
<tr>
<td>DOCTOR APOINTED:</td>
<td><input type="text" name="n11" value="<%=bn.getDoctor()%>" readonly="readonly"></td>
</tr>
</table>
<input type="submit" value="SAVE">
</form>
<%
}
%>
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>   
<%@include file="Footer/receptionfooter.jsp" %>
</body>
</html>