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
HttpSession ses=request.getSession();
boolean flag=(Boolean)ses.getAttribute("flag");
if(flag)
{
%>
<%@include file="Header/adminheader.jsp" %>
<div class="wrapper col3">
  <div id="breadcrumb">
    <ul>
      <li class="first">You Are Here</li>
      <li>&#187;</li>
      <li><a href="hospital1.jsp">Home</a></li>
      <li>&#187;</li>
      <li><a href="#">Administration</a></li>
    </ul>
  </div>
</div>
<div class="wrapper col3">
  <div id="intro">
  <div class="fl_left1">
  <h1>Notice</h1>
<p>Notice are successfully inserted.</p>
</div>
<div class="fl_right"><img src="images/demo/reg_success.jpg" alt="" /></div>
    <br class="clear" />
  </div>
</div>
<%@include file="Footer/adminfooter.jsp" %>
  <%
}
  %>
</body>
</html>