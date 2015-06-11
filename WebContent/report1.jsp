<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<script language="javascript" type="text/javascript" src="js/datetimepicker.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
</head>
<body id="top">
<%
HttpSession s5=request.getSession();
String pid=(String)s5.getAttribute("pid");
String cat=(String)s5.getAttribute("cat");

%>
<%@include file="Header/pathologyheader.jsp" %>

<div class="wrapper col5">
  <div id="container">
    <div id="content">
<h1>Patient Report for <%=pid %></h1>
<% 
  if("CBC Test".equalsIgnoreCase(cat))
{
	  %>
<form action="Report1" method="post">
<table>
<tr bgcolor="#E3F1F9">
<th><u>Test:</u>-<%=cat %></th>
<th><u>Input:</u></th>
<th><u>Units:</u></th>
<th><u>Normal Range:</u></th>
</tr>
<tr>
<td>White Blood Cell(WBC)</td>
<td><input type="text" name="wbc"></td>
<td>K/mcL</td>
<td>4.8-10.8</td>
</tr>
<tr>
<td>Red Blood Cell(RBC)</td>
<td><input type="text" name="rbc"></td>
<td>M/mcL</td>
<td>4.7-6.1</td>
</tr>
<tr>
<td>Hemoglobin (HB/Hgb)</td>
<td><input type="text" name="hbhgb"></td>
<td>g/dL</td>
<td>14.0-18.0</td>
</tr>
<tr>
<td>Hematocrit (HCT)</td>
<td><input type="text" name="hct"></td>
<td>%</td>
<td>42-52</td>
</tr>
<tr>
<td>Mean Cell Volume (MCV)</td>
<td><input type="text" name="mcv"></td>
<td>fL</td>
<td>80-100</td>
</tr>
<tr>
<td>Mean Cell Hemoglobin (MCH)</td>
<td><input type="text" name="mch"></td>
<td>pg</td>
<td>27.0-32.0</td>
</tr>
<tr>
<td>Mean Cell Hb Conc (MCHC)</td>
<td><input type="text" name="mchc"></td>
<td>g/dL</td>
<td>32.0-36.0</td>
</tr>
<tr>
<td>Red Cell Dist Width (RDW)</td>
<td><input type="text" name="rdw"></td>
<td>%</td>
<td>11.5-14.5</td>
</tr>
<tr>
<td>Platelet count</td>
<td><input type="text" name="pc"></td>
<td>K/mcL</td>
<td>150-450</td>
</tr>
<tr>
<td>Mean Platelet Volume</td>
<td><input type="text" name="mpv"></td>
<td>fL</td>
<td>7.5-11</td>
</tr>
<tr>
<td>Neutrophil (Neut)</td>
<td><input type="text" name="neut"></td>
<td>%</td>
<td>33-73</td>
</tr>
<tr>
<td>Lymphocyte (Lymph)</td>
<td><input type="text" name="lymph"></td>
<td>%</td>
<td>13-52</td>
</tr>
<tr>
<td>Monocyte (Mono)</td>
<td><input type="text" name="mono"></td>
<td>%</td>
<td>0-10</td>
</tr>
<tr>
<td>Eosinophil (Eos)</td>
<td><input type="text" name="eos"></td>
<td>%</td>
<td>0-5</td>
</tr>
<tr>
<td>Basophil (Baso)</td>
<td><input type="text" name="baso"></td>
<td>%</td>
<td>0-2</td>
</tr>
<tr>
<td>Neutrophil, Absolute</td>
<td><input type="text" name="neutA"></td>
<td>K/mcL</td>
<td>1.8-7.8</td>
</tr>
<tr>
<td>Lymphocyte, Absolute</td>
<td><input type="text" name="lymphA"></td>
<td>K/mcL</td>
<td>1.0-4.8</td>
</tr>
<tr>
<td>Monocyte, Absolute</td>
<td><input type="text" name="monoA"></td>
<td>K/mcL</td>
<td>0-0.8</td>
</tr>
<tr>
<td>Eosinophil, Absolute</td>
<td><input type="text" name="eosA"></td>
<td>K/mcL</td>
<td>0-0.45</td>
</tr>
<tr>
<td>Basophil, Absolute</td>
<td><input type="text" name="basoA"></td>
<td>K/mcL</td>
<td>0-0.2</td>
</tr>
<tr>
<td>Reticulocyte count</td>
<td><input type="text" name="rc"></td>
<td>%</td>
<td>3.0-33.0</td>
</tr>
</table>
<%
}
if("Coagulation Testing".equalsIgnoreCase(cat))
{
%>
<form action="Report2" method="post">
<table>
<tr bgcolor="#E3F1F9">
<th><u>Test:</u>-<%=cat %></th>
<th><u>Input:</u></th>
<th><u>Units:</u></th>
<th><u>Normal Range:</u></th>
</tr>
<tr>
<td>Prothrombine time:</td>
<td><input type="text" name="pt"></td>
<td>sec</td>
<td>9.4-11.6</td>
</tr>
<tr>
<td>Activated partial thromboplastin time:</td>
<td><input type="text" name="aptt"></td>
<td>sec</td>
<td>22.0-30.4</td>
</tr>
<tr>
<td>Fibrinogen Activity:</td>
<td><input type="text" name="fa"></td>
<td>mg/dL</td>
<td>175-425</td>
</tr>
<tr>
<td>Quantitative D-dimer:</td>
<td><input type="text" name="qdd"></td>
<td>mg/dL</td>
<td>0.0-1.6</td>
</tr>
<tr>
<td>Thrombine Time:</td>
<td><input type="text" name="tt"></td>
<td>sec</td>
<td>16-22</td>
</tr>
<tr>
<td>Thrombine Time Mixing Study:</td>
<td><input type="text" name="ttms"></td>
<td>sec</td>
<td>16-22</td>
</tr>
<tr>
<td>Reptilase time:</td>
<td><input type="text" name="rt"></td>
<td>sec</td>
<td>14-20</td>
</tr>
<tr>
<td>Fibrinogen Antigen:</td>
<td><input type="text" name="fan"></td>
<td>mg/dL</td>
<td>180-350</td>
</tr>
<tr>
<td>Fibrinogen Activity -Antigen Ratio:</td>
<td><input type="text" name="faar"></td>
<td align="center">-</td>
<td>0.97-1.2</td>
</tr>
</table>
<%
}
if("Urinalysis".equalsIgnoreCase(cat))
{
%>
<form action="Report3" method="post">
<table>
<tr bgcolor="#E3F1F9">
<th><u>Test:</u><%=cat %></th>
<th><u>Input:</u></th>
<th><u>Units:</u></th>
<th><u>Normal:</u></th>
</tr>
<tr>
<td>Color:</td>
<td><input type="text" name="col"></td>
<td align="center">-</td>
<td>Yellow</td>
</tr>
<tr>
<td>Appearance:</td>
<td><input type="text" name="app"></td>
<td align="center">-</td>
<td>Clear</td>
</tr>
<tr>
<td>Glucose:</td>
<td><input type="text" name="glu"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Bilirubin:</td>
<td><input type="text" name="bili"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Ketone:</td>
<td><input type="text" name="ket"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Blood:</td>
<td><input type="text" name="bl"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Spec Grav:</td>
<td><input type="text" name="sg"></td>
<td align="center">-</td>
<td>1.003-1.035</td>
</tr>
<tr>
<td>pH:</td>
<td><input type="text" name="ph"></td>
<td align="center">-</td>
<td>5.0-8.0</td>
</tr>
<tr>
<td>Protien:</td>
<td><input type="text" name="pro"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Urobilinogen:</td>
<td><input type="text" name="uro"></td>
<td align="center">mg/dL</td>
<td>0.1-1.0</td>
</tr>
<tr>
<td>Nitrite:</td>
<td><input type="text" name="nit"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Leuk Esterase:</td>
<td><input type="text" name="le"></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>RBC:</td>
<td><input type="text" name="rbc"></td>
<td align="center">/hpf</td>
<td>None Seen</td>
</tr>
<tr>
<td>WBC:</td>
<td><input type="text" name="wbc"></td>
<td align="center">/hpf</td>
<td>None Seen</td>
</tr>
<tr>
<td>Epithelial cells:</td>
<td><input type="text" name="ec"></td>
<td align="center">/hpf</td>
<td>Squamous</td>
</tr>
<tr>
<td>Bacteria:</td>
<td><input type="text" name="ba"></td>
<td align="center">-</td>
<td>0-1+</td>
</tr>
</table>
<%
}
if("Blood Banking".equalsIgnoreCase(cat))
{
%>
<form action="Report4" method="post">
<table>
<tr bgcolor="#FFE87C">
<td >Bag number:</td>
<td><input type="text" name="bno"></td>
</tr>
</table>
<table>
<tr bgcolor="#E3F1F9">
<th><u>Test:</u>-<%=cat %></th>
<th><u>Input:</u></th>
<th><u>Units:</u></th>
<th><u>Normal:</u></th>
</tr>
<tr>
<td>Blood Group:</td>
<td><input type="text" name="bg"></td>
<td align="center">-</td>
<td align="center">-</td>
</tr>
<tr>
<td>HIV:</td>
<td><input type="text" name="hiv"></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>HBsAg:</td>
<td><input type="text" name="hbsag"></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>HCV:</td>
<td><input type="text" name="hcv"></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>VDRL:</td>
<td><input type="text" name="vdrl"></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>BMP:</td>
<td><input type="text" name="bmp"></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>HB:</td>
<td><input type="text" name="hb"></td>
<td align="center">g/dL</td>
<td align="center">14.0-18.0</td>
</tr>
</table>
<%
}
%>
<br>
<table>
<tr bgcolor="#FFE87C">
<td>date:</td><td><input id="demo1" type="text" name="date"></td><td><a href="javascript:NewCal('demo1','ddmmmyyyy')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
</tr>
</table>
<br><br><br>
<input type="submit" value="Submit" >
</form>
<br><br><br>
</div>
<div class="fl_right"><img src="images/demo/12584708_BG1.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>

<%@include file="Footer/pathologyfooter.jsp" %>

</body>
</html>