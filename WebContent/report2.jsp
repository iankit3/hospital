<%@page import="com.pack4.ReportBean"%>
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
<script type="text/javascript">
    function printpage() {
        var printButton = document.getElementById("printpagebutton");
        printButton.style.visibility = 'hidden';
        window.print();
        printButton.style.visibility = 'visible';
    }
</script>
<%HttpSession ses=request.getSession();
boolean flag=(Boolean)ses.getAttribute("flag");
boolean flag1=(Boolean)ses.getAttribute("flag1");
String cat=(String)ses.getAttribute("cat");
ArrayList<ReportBean> als=(ArrayList)ses.getAttribute("als");
if(flag)
{
	if(flag1)
	{
		
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
  <%
  	for(ReportBean bn: als)
	{
  %>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
    </div>
    
    <h1><%=cat %> Report for <%=bn.getPid() %></h1>
   
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
   
  
<form>

  <div align="right"><%=bn.getDate()%></div>
 
<table>
<tr >
<th><u>Test:</u></th>
<th><u>Input:</u></th>
<th><u>Units:</u></th>
<th><u>Normal Range:</u></th>
</tr>
<% if("CBC Test".equalsIgnoreCase(cat))
{
%>
<tr>
<td>White Blood Cell(WBC)</td>
<td><%=bn.getWbc() %></td>
<td>K/mcL</td>
<td>4.8-10.8</td>
</tr>
<tr>
<td>Red Blood Cell(RBC)</td>
<td><%=bn.getRbc() %></td>
<td>M/mcL</td>
<td>4.7-6.1</td>
</tr>
<tr>
<td>Hemoglobin (HB/Hgb)</td>
<td><%=bn.getHbhgb() %></td>
<td>g/dL</td>
<td>14.0-18.0</td>
</tr>
<tr>
<td>Hematocrit (HCT)</td>
<td><%=bn.getHct()%></td>
<td>%</td>
<td>42-52</td>
</tr>
<tr>
<td>Mean Cell Volume (MCV)</td>
<td><%=bn.getMcv() %></td>
<td>fL</td>
<td>80-100</td>
</tr>
<tr>
<td>Mean Cell Hemoglobin (MCH)</td>
<td><%=bn.getMch() %></td>
<td>pg</td>
<td>27.0-32.0</td>
</tr>
<tr>
<td>Mean Cell Hb Conc (MCHC)</td>
<td><%=bn.getMchc() %></td>
<td>g/dL</td>
<td>32.0-36.0</td>
</tr>
<tr>
<td>Red Cell Dist Width (RDW)</td>
<td><%=bn.getRdw() %></td>
<td>%</td>
<td>11.5-14.5</td>
</tr>
<tr>
<td>Platelet count</td>
<td><%=bn.getPc() %></td>
<td>K/mcL</td>
<td>150-450</td>
</tr>
<tr>
<td>Mean Platelet Volume</td>
<td><%=bn.getMpv() %></td>
<td>fL</td>
<td>7.5-11</td>
</tr>
<tr>
<td>Neutrophil (Neut)</td>
<td><%=bn.getNeut() %></td>
<td>%</td>
<td>33-73</td>
</tr>
<tr>
<td>Lymphocyte (Lymph)</td>
<td><%=bn.getLymph() %></td>
<td>%</td>
<td>13-52</td>
</tr>
<tr>
<td>Monocyte (Mono)</td>
<td><%=bn.getMono()%></td>
<td>%</td>
<td>0-10</td>
</tr>
<tr>
<td>Eosinophil (Eos)</td>
<td><%=bn.getEos() %></td>
<td>%</td>
<td>0-5</td>
</tr>
<tr>
<td>Basophil (Baso)</td>
<td><%=bn.getBaso() %></td>
<td>%</td>
<td>0-2</td>
</tr>
<tr>
<td>Neutrophil, Absolute</td>
<td><%=bn.getNeutA() %></td>
<td>K/mcL</td>
<td>1.8-7.8</td>
</tr>
<tr>
<td>Lymphocyte, Absolute</td>
<td><%=bn.getLymphA() %></td>
<td>K/mcL</td>
<td>1.0-4.8</td>
</tr>
<tr>
<td>Monocyte, Absolute</td>
<td><%=bn.getMonoA() %></td>
<td>K/mcL</td>
<td>0-0.8</td>
</tr>
<tr>
<td>Eosinophil, Absolute</td>
<td><%=bn.getEosA() %></td>
<td>K/mcL</td>
<td>0-0.45</td>
</tr>
<tr>
<td>Basophil, Absolute</td>
<td><%=bn.getBasoA() %></td>
<td>K/mcL</td>
<td>0-0.2</td>
</tr>
<tr>
<td>Reticulocyte count</td>
<td><%=bn.getRc() %></td>
<td>%</td>
<td>3.0-33.0</td>
</tr>
<%
}
if("Coagulation Testing".equalsIgnoreCase(cat))
{
%>
<tr>
<td>Prothrombine time:</td>
<td><%=bn.getPt() %></td>
<td>sec</td>
<td>9.4-11.6</td>
</tr>
<tr>
<td>Activated partial thromboplastin time:</td>
<td><%=bn.getAptt() %></td>
<td>sec</td>
<td>22.0-30.4</td>
</tr>
<tr>
<td>Fibrinogen Activity:</td>
<td><%=bn.getFa() %></td>
<td>mg/dL</td>
<td>175-425</td>
</tr>
<tr>
<td>Quantitative D-dimer:</td>
<td><%=bn.getQdd() %></td>
<td>mg/dL</td>
<td>0.0-1.6</td>
</tr>
<tr>
<td>Thrombine Time:</td>
<td><%=bn.getTt() %></td>
<td>sec</td>
<td>16-22</td>
</tr>
<tr>
<td>Thrombine Time Mixing Study:</td>
<td><%=bn.getTtms() %></td>
<td>sec</td>
<td>16-22</td>
</tr>
<tr>
<td>Reptilase time:</td>
<td><%=bn.getRt() %></td>
<td>sec</td>
<td>14-20</td>
</tr>
<tr>
<td>Fibrinogen Antigen:</td>
<td><%=bn.getFan() %></td>
<td>mg/dL</td>
<td>180-350</td>
</tr>
<tr>
<td>Fibrinogen Activity -Antigen Ratio:</td>
<td><%=bn.getFaar() %></td>
<td align="center">-</td>
<td>0.97-1.2</td>
</tr>
<%
}
if("Urinalysis".equalsIgnoreCase(cat))
{
%>
<tr>
<td>Color:</td>
<td><%=bn.getCol() %></td>
<td align="center">-</td>
<td>Yellow</td>
</tr>
<tr>
<td>Appearance:</td>
<td><%=bn.getApp() %></td>
<td align="center">-</td>
<td>Clear</td>
</tr>
<tr>
<td>Glucose:</td>
<td><%=bn.getGlu() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Bilirubin:</td>
<td><%=bn.getBili() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Ketone:</td>
<td><%=bn.getKet() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Blood:</td>
<td><%=bn.getBl() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Spec Grav:</td>
<td><%=bn.getSg() %></td>
<td align="center">-</td>
<td>1.003-1.035</td>
</tr>
<tr>
<td>pH:</td>
<td><%=bn.getPh() %></td>
<td align="center">-</td>
<td>5.0-8.0</td>
</tr>
<tr>
<td>Protien:</td>
<td><%=bn.getPro() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Urobilinogen:</td>
<td><%=bn.getUro() %></td>
<td align="center">mg/dL</td>
<td>0.1-1.0</td>
</tr>
<tr>
<td>Nitrite:</td>
<td><%=bn.getNit() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>Leuk Esterase:</td>
<td><%=bn.getLe() %></td>
<td align="center">-</td>
<td>Negative</td>
</tr>
<tr>
<td>RBC:</td>
<td><%=bn.getRb() %></td>
<td align="center">/hpf</td>
<td>None Seen</td>
</tr>
<tr>
<td>WBC:</td>
<td><%=bn.getWb() %></td>
<td align="center">/hpf</td>
<td>None Seen</td>
</tr>
<tr>
<td>Epithelial cells:</td>
<td><%=bn.getEc() %></td>
<td align="center">/hpf</td>
<td>Squamous</td>
</tr>
<tr>
<td>Bacteria:</td>
<td><%=bn.getBa() %></td>
<td align="center">-</td>
<td>0-1+</td>
</tr>
<%
}
if("Blood Banking".equalsIgnoreCase(cat))
{
%>
<tr>
<td>Blood Group:</td>
<td><%=bn.getBg() %></td>
<td align="center">-</td>
<td align="center">-</td>
</tr>
<tr>
<td>HIV:</td>
<td><%=bn.getHiv() %></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>HBsAg:</td>
<td><%=bn.getHbsag() %></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>HCV:</td>
<td><%=bn.getHcv() %></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>VDRL:</td>
<td><%=bn.getVdrl() %></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>BMP:</td>
<td><%=bn.getBmp() %></td>
<td align="center">-</td>
<td align="center">Negative</td>
</tr>
<tr>
<td>HB:</td>
<td><%=bn.getHb() %></td>
<td align="center">g/dL</td>
<td align="center">14.0-18.0</td>
</tr>
</table>
<table>
<tr bgcolor="#FFE87C">
<td >Bag number:</td>
<td><%=bn.getBno() %></td>
</tr>
<%
}
%>
</table>
<input id="printpagebutton" type="button" value="Print this page" onclick="printpage()"/>
</form>
   <%
	}
  %>  
</div>
<div class="fl_right"><img src="images/demo/methodist_hospital.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%
	}
}

%>
</body>
</html>