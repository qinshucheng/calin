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
    
    <title>病人注册页面</title>
    
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
   	<h3>病人注册</h3>
   	<form action="add" method="post">
   		<table>
   			<tr>
   				<td><s:textfield name="em.empname" label="姓名"/></td>
   			</tr>
   			<tr>
   				<td><s:password name="em.empwd" label="密码"/></td>
   			</tr>
   			<tr>
   				<td><s:password name="em.emrepwd" label="再次输入密码"/></td>
   			</tr>
   			<tr>
   				<td><s:radio name="em.sex" value="'男'" list="#{'男':'男','女':'女' }" label="性别"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.age" label="年龄"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.post" label="联系方式"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.address" label="地址"/></td>
   			</tr>
   			<tr>
   			</tr>
   			<tr>
   			          <td></td>
   				<td colspan="2"><s:submit value="注册" theme = "simple"/>
   		            <s:reset  value="重置" theme = "simple"/>
   		            <s:reset value="返回" onclick="location='patientlogin.jsp'"
   		                                theme = "simple"/>
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
</html>
