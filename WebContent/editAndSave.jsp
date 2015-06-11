<%@page import="java.util.ArrayList"%>
<%@page import="com.pack4.Bean"%>
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
<%
HttpSession s11=request.getSession();
ArrayList<Bean> als=(ArrayList)s11.getAttribute("als3");
for(Bean bn: als)
{
%>
<h1>Patient Update</h1>
<form action="Update" method="post">
<table>
<tr>
<td>Patient id:</td><td><input type="text" value="<%=bn.getPatient_ID()%>" name="n1" readonly="readonly"></td>
</tr>
<tr>
<td>Name:</td><td><input type="text" value="<%=bn.getName()%>" name="n2" readonly="readonly"></td>
</tr>
<tr>
<td>Age:</td><td><input type="text" value="<%=bn.getAge()%>" name="n3"></td>
</tr>
<tr>
<td>Gender:</td><td><select name="n4" ><option><%=bn.getSex()%></option>
<option>Female</option>
<option>Male</option></td>
</tr>
<tr>
<td>Address:</td><td><input type="text" value="<%=bn.getAddress()%>" name="n5"></td>
</tr>
<tr>
<td>Weight:</td><td><input type="text" value="<%=bn.getWeight()%>" name="n6"></td>
</tr>
<tr>
<td>Phone No.:</td><td><input type="text" value="<%=bn.getPhone_no()%>" name="n7" readonly="readonly"></td>
</tr>
<td>Department:</td><td><input type="text" value="<%=bn.getDepartment()%>" name="n8" readonly="readonly"></td>
</tr>
<tr>
<td>Room no.:</td><td><input type="text" value="<%=bn.getRoom_no()%>" name="n9"></td>
</tr>
<tr>
<td>Date of admitted:</td><td><input type="text" value="<%=bn.getDate_of_admitted()%>" name="n10" ></td>
</tr>
<td>Advance:</td><td><input type="text" value="<%=bn.getAdvance()%>" name="n11"></td>
</tr>
<tr>
<td>Date of discharge:</td><td><input type="text" value="<%=bn.getDate_of_discharge()%>" name="n12"></td>
</tr>
<tr>
<td>Consulting:</td>
<td><input type="text" name="n13" value="<%=bn.getDoctor()%>" readonly="readonly"></td>
</tr>
<tr>
<td>Ward:</td>
<td><select name="n14">
 <option><%=bn.getWard()%></option>
 <option>Class C</option>
 <option>Class B2</option>
 <option>Class B1</option>
 <option>Class A1</option>
</td>
</select>
</tr>
</table>
</td><td><input type="submit" value="SAVE">
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