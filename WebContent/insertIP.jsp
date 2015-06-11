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
HttpSession s22=request.getSession();
boolean flag=(Boolean)s22.getAttribute("flag4");
String patient_id=(String)s22.getAttribute("patient_id");
if(flag)
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
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
<h1>Inpatient Registration</h1>
<p>All Inpatient details are successfull inserted in the database.</p>
<p>The Inpatient is registered with an Id: <%=patient_id %></p>
</div>
<div class="fl_right"><img src="images/demo/reg_success.jpg" alt="" /></div> 
<br class="clear" /> 
  </div>
</div>
<%@include file="Footer/receptionfooter.jsp" %>
<%
}
%>
</body>
</html>