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
<%
HttpSession ses=request.getSession();
String did=(String)ses.getAttribute("did");
boolean flag=(Boolean)ses.getAttribute("flag");
if(flag)
{
%>
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
      <li><a href="#">Delete Doctor Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Doctor Registration</h1>
<p>All the details of doctor registered with an Id <%=did%> are successfully deleted.</p>
</div>
<div class="fl_right"><img src="images/demo/reg_success.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%@include file="Footer/adminfooter.jsp" %>
  <%
}
  %>
</body>
</html>