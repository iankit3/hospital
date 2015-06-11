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
HttpSession s6=request.getSession();
boolean flag2=(Boolean)s6.getAttribute("flag2");
String pid=(String)s6.getAttribute("pid");
if(flag2)
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
      <li><a href="reception1.jsp">reception</a></li>
      <li>&#187;</li>
      <li><a href="#">Delete Patient Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
	<h1>Patient Deletion page</h1>
	<p>All Details of Patient registered with patient id <%=pid %> are successfully deleted.</p>
	</div>
<div class="fl_right"><img src="images/demo/reg_success.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>
<%@include file="Footer/receptionfooter.jsp" %>
	<%
		}

		
%>
</body>
</html>