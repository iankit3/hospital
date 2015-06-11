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
<script type="text/javascript">
    function printpage() {
        var printButton = document.getElementById("printpagebutton");
        printButton.style.visibility = 'hidden';
        window.print();
        printButton.style.visibility = 'visible';
    }
</script>
<%HttpSession ses=request.getSession();
int cost=(Integer)ses.getAttribute("cost");
int cost1=(Integer)ses.getAttribute("cost1");
int cost6=(Integer)ses.getAttribute("cost6");
int cost7=(Integer)ses.getAttribute("cost7");
String pid=(String)ses.getAttribute("pid");		
%>
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <h1><a href="#">Aasuja Hospital</a></h1>
      <p><strong>We serve the best</strong></p>
    </div>
    <br class="clear" />
  </div>
</div>
 
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
    </div>
    
    <h1>Bill for <%=pid%></h1>
   
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
   
  
<form>
 
<table>
<tr >
<th></th>
<th><u>Cost</u></th>
</tr>
<tr>
<td>Ward Charge</td>
<td><%=cost %></td>
</tr>
<tr>
<td>Doctor Charge/Department Charge</td>
<td><%=cost1 %></td>
</tr>
<tr>
<td>Lab Charge</td>
<td><%=cost6%></td>
</tr>
<tr>
<th>Total</th>
<th><%=cost7%></th>
</tr>
</table>
<input id="printpagebutton" type="button" value="Print this page" onclick="printpage()"/>
</form>
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
</body>
</html>