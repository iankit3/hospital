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
HttpSession s5=request.getSession();
ArrayList<String> als=(ArrayList)s5.getAttribute("als");
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
      <li><a href="#">Update Patient Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
<h1>Update Patient Detail</h1>
<form action="FetchDetail">
<table>
<tr>
<td>Patient Id:</td>
<td>
<select name="p_id">
<%
for(String eId:als)
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
</table>
<input type="submit" value="Update" >
</form>
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>

<%@include file="Footer/receptionfooter.jsp" %>

</body>
</html>