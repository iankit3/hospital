<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
Template Name: BusinessToday
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Aasuja Hospital-No. 1 hospital in India</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
 
 <%@include file="Header/indexHeader.jsp" %>



<div class="wrapper col3">
 
  <div id="intro">
  
    <div class="fl_left">
    
      <h2>We provide quality health care to patients.</h2>
      <p>Delivering the right care at the right time in the right setting is the core mission of hospitals across the country. Birla is committed to helping members improve the quality of care they deliver every day.</p>
      <p class="readmore"><a href="index1.jsp">more details... &raquo;</a></p>
    </div>
    <div class="fl_right"><img src="images/demo/hospital-mangement1.jpg">
    </div>
    <br class="clear" />
  </div>
</div>

<div class="wrapper col4">
  <div id="services">
    <ul>
      <li>
        <div class="fl_left"><img src="images/demo/indian-hospitals.jpg" alt="" /></div>
        <div class="fl_right">
          <h2>Doctors</h2>
          <p>Doctors examine, diagnose and treat patients who have been referred to the hospital by GPs and other health professionals...</p>
          <p class="readmore"><a href="doctor.jsp">Continue Reading &raquo;</a></p>
        </div>
      </li>
      <li>
        <div class="fl_left"><img src="images/demo/pathology_head2-2.jpg" alt="" /></div>
        <div class="fl_right">
          <h2>Pathologist</h2>
          <p>Clinical pathology is a medical specialty that is concerned with the diagnosis of disease based on the laboratory...</p>
          <p class="readmore"><a href="pathology.jsp">Continue Reading &raquo;</a></p>
        </div>
      </li>
      <li class="last">
        <div class="fl_left"><img src="images/demo/3677670755_edbdca40ed.jpg" alt="" /></div>
        <div class="fl_right">
          <h2>Receptionist</h2>
          <p>In busy hospital environments where emergencies and sensitive cases occur every day, you need to be sure that your...</p>
          <p class="readmore"><a href="reception.jsp">Continue Reading &raquo;</a></p>
        </div>
      </li>
    </ul>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
    <%@include file="imageslider/imgsld.jsp"%>
    <br></br>
      <h2>About Aasuja Hospital</h2>
      <p>This is number 1 hospital in India. It serves the country for decade.You can go for <a href="http://www.os-templates.com/">review</a>.</p>
      <p>India is vast in population.<a href="http://www.os-templates.com/template-terms"> Current populaton in India</a> is one of the biggest challenge for our hospital. We also gives free treatment for poor people.</p>
      <p>We are having 5 more branches outside India.<a href="http://www.os-templates.com/">Other Country Detail</a>.</p>
    </div>
    <div id="column">
      <div class="holder">
        <h2>Birla Laboratory</h2>
        <ul id="latestnews">
          <li> <img class="imgl" src="images/demo/02.jpg" alt="" />
            <p><strong><a href="lab.jsp">Lab Report</a></strong></p>
            <p>Are you ok? What is your problem? What your doctor recomend to you? These are all in your lab report. </p>
          </li>
          <li > <img class="imgl" src="images/demo/medical-billing-company-software_pic.jpg" alt="" />
            <p><strong><a href="PatientIdGenerate3">billing</a></strong></p>
            <p>Computerized billing is done. No need for waiting its fast and simple. You just know your id and your bill is ready.</p>
          </li>
           <li class="last"> <img class="imgl" src="images/demo/Class-A1.jpg" alt="" />
            <p><strong><a href="ward.jsp">Ward Details</a></strong></p>
            <p>Different ward are available as per requirement. Every ward have AC facility and well maitained by our nurses.</p>
          </li>
        </ul>
      </div>
    </div>
    <br class="clear" />
  </div>
</div>

<%@include file="Footer/indexFooter.jsp" %>
</body>
</html>