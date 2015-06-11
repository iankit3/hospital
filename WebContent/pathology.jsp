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
      <li><a href="#">Reception</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Clinical Pathology</h1>
  <p>Clinical pathology is a medical specialty that is concerned with the diagnosis of disease based on the laboratory analysis of bodily fluids such as blood and urine, as well as tissues, using the tools of chemistry, clinical microbiology, hematology and molecular pathology.</p>
    </div>
    <div class="fl_right"><img src="images/demo/Corbis-42-20047001.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
    <div id="newsletter" >
    <h1>login</h1>
 	<form action="PathologyLogin" method="post">
<table>
<tr>
<td>Username:</td>
<td><input type="text" name="username"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password"></td>
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