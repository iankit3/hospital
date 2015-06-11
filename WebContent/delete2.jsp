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
 	<%
HttpSession ses=request.getSession();
ArrayList<String> als=(ArrayList)ses.getAttribute("als");
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
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Select Id to delete</h1>
  <p>Here admin can Delete pathologist details by just selecting his/her Id from the select box which contain id of every pathologist in database and click the delete button. And all detail related to that pathologist are deleted.</p>
  <form action="Delete2" method="post">
  <select name="id">
  <%for(String ub:als) {
  %>
  <option><%=ub%></option>
  <%
  }%>
  </select>
  <input type="submit" value="Delete">
  </form>
    </div>
    <div class="fl_right"><img src="images/demo/hospital_admin_800.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%@include file="Footer/adminfooter.jsp" %>
</body>
</html>