<%@page import="java.text.SimpleDateFormat"%>
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
        <h1>session内置对象</h1>
        <%
                SimpleDateFormat sdf= new SimpleDateFormat("yyyy年mm月dd日 hh:mm:ss");
                Date  d = new Date(session.getCreationTime());
                session.setAttribute("username", "admin");
                session.setAttribute("password", "123465");
                session.setAttribute("age", 20);
                //设置session的最大生存期限
                session.setMaxInactiveInterval(5);
         %>
        <hr>
        session的创建时间：<%=sdf.format(d) %><br>
        从session中获取用户名：<%=session.getAttribute("username") %><br>
        从session中获得ID：<%=session.getId() %><br>
        请求的真实路径：<%=request.getRealPath("session_page1.jsp") %><br>
        <a href="session_page2.jsp"  target="_blank">跳转到session_page2</a>
  </body>
</html>
