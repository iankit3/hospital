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
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="#">Birla Hospital</a></h1>
      <p><strong>We serve the best</strong></p>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li class="active"><a href="hospital1.html">Home</a></li>
        <li><a href="facilities.jsp">Facilities</a></li>
        <li><a href="#">Department</a>
          <ul>
            <li><a href="department/cardiology.jsp">Cardiology</a></li>
            <li><a href="department/gynaecology.jsp">Gynaecology</a></li>
            <li><a href="department/pediatrics.jsp">Pediatrics</a></li>
            <li><a href="department/dentistry.jsp">Dentistry</a></li>
			<li><a href="department/dermatology.jsp">Dermatology</a></li>
			<li><a href="department/physiotherapy.jsp">Physiotherapy</a></li>
			<li><a href="department/diabetes.jsp">Diabetes</a></li>
			<li><a href="department/hematology.jsp">Hematology</a></li>
			<li><a href="department/neurology.jsp">Neurology</a></li>
			<li><a href="department/kau.jsp">kidney and urology</a></li>
			<li><a href="department/lungs.jsp">lungs</a></li>
			<li><a href="department/rheumatic.jsp">rheumatic</a></li>
			<li><a href="department/orthopedics.jsp">orthopedics</a></li>
          </ul>
        </li>
        <li><a href="administration.jsp">Administration</a></li>
        <li class="last"><a href="about.jsp">About Us</a></li>
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
        <fieldset>
          <legend>Site Search</legend>
          <input type="text" value="Search Our Website&hellip;"  onfocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;" />
          <input type="submit" name="go" id="go" value="Search" />
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.html">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Grand Parent</a></li>
      <li>&#187;</li>
      <li><a href="#">Parent</a></li>
      <li>&#187;</li>
      <li class="current"><a href="#">Child</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
 
    </div>
    <br class="clear" />
   </div>
  </div>


<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Birla Hospital</a></p>
    <p class="fl_right">Project by <a target="_blank" href="http://www.bietsuri.ac.in/ComputerScience.aspx" title="Free Website Templates">B.I.E.T</a></p>
    <br class="clear" />
  </div>
  </div>
</body>
</html>