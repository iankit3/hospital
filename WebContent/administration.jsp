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
<%@ include file="Header/indexHeader.jsp" %>
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
  <h1>Login Page for Admin</h1>
  <p>Here admin can login and do all managenent work. The admin can be a developer of the sites or a doctor. Admin plays a vast role in this project. Before go to admin page there is alogin page to secure every details from outsider.</p>
  <p>It is the duty of admin to keep the username and password confidential. Loose of confidentiality may violate details of hospital database.</p>
    </div>
    <div class="fl_right"><img src="images/demo/6f96b53c2c.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
    <div id="newsletter" >
    <h1>Login</h1>
    <form action="AdminLogin" method="post">
    <table>
    <tr>
	<td>Password:</td>
	<td><input type="text" name="username" required></td>
	</tr>
	<tr>
	<td>Password:</td>
	<td><input type="password" name="password" required></td>
	</tr>
	</table>
	<input type="submit" value="Submit">
	</form>
	</div>
    </div>
    <br class="clear" />
   </div>
  </div>

<%@include file="Footer/indexFooter.jsp" %>
</body>
</html>