<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="top">
<%
HttpSession s13=request.getSession();
boolean f=(Boolean)s13.getAttribute("flag");
boolean f2=(Boolean)s13.getAttribute("flag1");
boolean f3=(Boolean)s13.getAttribute("flag2");
if(f)
{
	if(f2)
		{
		if(f3)
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
    <p>The patient details are successfully Updated.</p>
    </div>
<div class="fl_right"><img src="images/demo/reg_success.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>

   
<%@include file="Footer/receptionfooter.jsp" %>
<%
		}
		}
}
%>
</body>
</html>