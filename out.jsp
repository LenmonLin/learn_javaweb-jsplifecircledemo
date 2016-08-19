<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is my JSP page. <br>
    <h1>out 对象</h1>
    <% //java脚本里面不能用html标签
    	out.println("厂前秘密你<br>");
    	out.println("厂前秘密你<br>");
    	out.flush();
    	out.clearBuffer();
    	//out.clear();//会抛出异常
    	out.println("厂额秘密你<Br>");
    	out.println("厂额<Br>");
     %>
     缓冲区的大小<%=out.getBufferSize()  %><BR>
     缓冲区的剩余大小<%=out.getRemaining() %><BR>
     是否自动清空<%=out.isAutoFlush() %><Br>
  </body>
</html>
