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
    
    <title>病人信息页面</title>
    
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
    	<h3>病人信息表</h3>
    	
    	<table border="1">
    		<tr>
    			<td>编号</td>
    			<td>姓名</td>
    			
    			<td>性别</td>
    			<td>年龄</td>
    			<td>联系方式</td>
    			<td>地址</td>
    			<td>病情</td>
    			<td>操作</td>
    			
    		</tr>
    		<s:iterator var="aa" value="list">
    			<tr>
    				<td><s:property value="#aa.empno"/></td>
    				<td><s:property value="#aa.empname"/></td>
    				
    				<td><s:property value="#aa.sex"/></td>
    				<td><s:property value="#aa.age"/></td>
    				<td><s:property value="#aa.post"/></td>
    				<td><s:property value="#aa.address"/></td>
    				<td><s:property value="#aa.detail"/></td>
    				<td>
    				<s:a href="deletepatient?em.empno=%{#aa.empno}">删除</s:a>
    				<s:a href="byid?em.empno=%{#aa.empno}">添加病情</s:a>
    				</td>
    			</tr>
    		</s:iterator>   <!-- 循环输出 -->
    	          
    	</table>
    	
    	<s:a href="index.jsp">退出</s:a>
    	 
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
