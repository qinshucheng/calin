<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page import="java.text.SimpleDateFormat,java.util.Date" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>病人登陆页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <body bgcolor="white" text="#FF0000" background="images/背景.jpg">
  <center>
   <h3>病人登陆</h3>
   	<form action="patientlogin"  method="post">
    <table style="text-align:center;">
    <tr>
    	<td>账号:</td>
    	<td><input type="text" name="em.empname"></td>
    </tr>
    <tr></tr>
    <tr></tr>
    <tr>
    	<td>密码:</td>
    	<td><input type="password" name="em.empwd"></td>
    </tr>
    <tr></tr>
    <tr></tr>
    <tr>
          <td></td>
    	<td><input type="submit" value="登陆">
    	<s:reset value="注册" onclick="location='add.jsp'" theme = "simple"/>
    	<s:reset value="医生登陆" onclick="location='index.jsp'" theme = "simple"/>
    	</td>
    </tr>
    </table>
    </form>
   	  当前日期和时间
         <font  color="blue">
    <%
    SimpleDateFormat dateformat = new SimpleDateFormat ("yyyy-MM-dd HH:mm:ss");
    out.println(dateformat.format(new Date()));
    %>
    </font>
    </center>
  </body>