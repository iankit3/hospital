<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css">
</head>
<body id="top">
<div class="wrapper col6">
  <div id="footer">
  	<div id="login">
      <h2>Notice or Update</h2>
      <p>notice are given by admin which are visible in home page.</p>
      <form action="Notice" method="post">
        <fieldset>
          <legend>Notice</legend>
          <div class="fl_left">
            <textarea name="headline" cols="24" rows="1" onfocus="this.value=(this.value=='Headline')? '' : this.value ;" required>Headline</textarea>
            <textarea  name="detail" cols="24" rows="4" onfocus="this.value=(this.value=='Detail')? '' : this.value ;" required>Detail</textarea>
             <input type="submit" value="Submit&raquo;" />
          </div>
        </fieldset>
      </form>
    </div>
     <div class="footbox">
      <h2>Deletion</h2>
      <ul>
        <li><a href="FetchDocId">Delete Doctor Detail</a></li>
        <li><a href="FetchId1">Delete Pathologist</a></li>
        <li><a href="FetchId">Delete Receptionist</a></li>
        <li><a href="FetchId2">Delete Others Employee</a></li>
      </ul>
    </div>
     
    <div class="footbox">
	<h2>Registration</h2>
		<ul>
			<li><a href="insert1.jsp">Insert Doctor Detail</a></li>
        <li><a href="pathologist.jsp">Pathologist Registration</a></li>
         <li><a href="receptionist.jsp">Receptionist Registration</a></li>
         <li><a href="employee.jsp">Registration of others employee</a></li>
			
		</ul>
 	</div>
   <div class="footbox">
      <h2>View</h2>
      <ul>
		<li><a href="View">Inpatient Detail</a></li>
		<li><a href="View1">Outpatient Detail</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>


<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Aasuja Hospital</a></p>
    <p class="fl_right">Project by <a target="_blank" href="http://www.bietsuri.ac.in/ComputerScience.aspx" title="Free Website Templates">B.I.E.T</a></p>
    <br class="clear" />
  </div>
  </div>
</body>
</html>