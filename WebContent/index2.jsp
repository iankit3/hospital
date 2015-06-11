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
<%@ include file="Header/index1Header.jsp" %>
<%HttpSession ses=request.getSession();
String headline=(String)ses.getAttribute("headline");
String detail=(String)ses.getAttribute("detail");
%>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.html">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Notice</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1><%=headline %></h1>
  <p><%=detail %></p>
  </div>
    <div class="fl_right"><img src="images/demo/6f96b53c2c.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>

<%@include file="Footer/indexFooter.jsp" %>
</body>
</html>