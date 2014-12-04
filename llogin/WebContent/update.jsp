<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>病情添加页面</title>
    
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
    	<h3>病情添加</h3>
   	<form action="update" method="post">
   		<table>
   		<tr>
   				<td><s:textfield name="em.empno" value="%{em.empno}" label="编号" readonly="true"/></td>
   			</tr>
   			
   			<tr>
   				<td><s:textfield name="em.empname" value="%{em.empname}" label="姓名" readonly="true"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.empwd" value="%{em.empwd}" label="密码" readonly="true"/></td>
   			</tr>
   			<tr>
   				<td><s:radio name="em.sex" value="%{em.sex}" list="#{'男':'男','女':'女' }" label="性别" readonly="true"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.age" value="%{em.age}" label="年龄" readonly="true"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.post" value="%{em.post}" label="联系方式" readonly="true"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.address" value="%{em.address}" label="地址" readonly="true"/></td>
   			</tr>
   			<tr>
   				<td><s:textfield name="em.detail" value="%{em.detail}" label="病情" /></td>
   			</tr>
   			<tr></tr>
   			<tr></tr>
   			<tr></tr>
   			<tr>
   			          <td></td>
   				<td colspan="2">
   					<s:submit value="添加" theme = "simple"/>
   		            <s:reset  value="重置" theme = "simple"/>
   		            <s:reset value="返回" onclick="location='querypatient'" theme = "simple"/>
   		                    </td>
   			</tr>
   		</table>	
   	</form>
   	</center>
  </body>
</html>
