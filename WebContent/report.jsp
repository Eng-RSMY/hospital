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
HttpSession s5=request.getSession();
boolean flag=(Boolean)s5.getAttribute("flag");
ArrayList<String> als=(ArrayList)s5.getAttribute("als");
if(flag)
{
%>
<%@include file="Header/pathologyheader.jsp" %>

<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.html">Home</a></li>
      <li>&#187;</li>
      <li><a href="reception1.jsp">Reception</a></li>
      <li>&#187;</li>
      <li><a href="#">Delete Patient Detail</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
<h1>Patient Report</h1>
<form action="Report" method="post">
<table>
<tr>
<td>Patient Id:</td>
<td>
<select name="pid">
<%
for(String eId:als)
{
%>
<option>
<%=eId%>
</option>
<%
}
%>
</td>
</tr>
<tr>
<td>Lab Category:</td>
<td><select name="cat">
<option>CBC Test</option>
<option>Coagulation Testing</option>
<option>Urinalysis</option>
<option>Blood Banking</option>
</select>
</td>
</tr>
</table>
<input type="submit" value="Submit" >
</form>
</div>
<div class="fl_right"><img src="images/demo/12584708_BG1.jpg" alt="" /></div>  
  </div>
   <br class="clear" />
</div>

<%@include file="Footer/pathologyfooter.jsp" %>

  <%
}
  %>
</body>
</html>