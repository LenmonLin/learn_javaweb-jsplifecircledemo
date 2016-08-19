<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'request.jsp' starting page</title>
    
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
        <% 
        request.setCharacterEncoding("utf-8"); //解决request传送过程中文乱码的问题    
        request.setAttribute("password", "123456");
        %>
        <h1>request的内置对象</h1>
        用户名：<%=request.getParameter("username") %><br>
        <!-- 注意getParameter 与getParametervalues的区别，如果这里getParametervalues会报错 -->
        爱好：<%
                    if (request.getParameterValues("favorite")!=null){
	                        String[]  favorites = request.getParameterValues("favorite"); 
	                        /*
	                       bug1 favorite 写成favirote,以后要引用字符串的内容一定用复制；
	                       bug2 不能直接在request.jsp上面开服务器，访问request.jsp
	                     应该访问reg.jsp跳转到request.jsp才能生效
	                     bug3 当使用重定向时，因为是一个新的请求，原来填写的用户名资料和密码是null
	                     所以如果不加if条件判断的话，null是无法获得键值，所以会报错，但是tomcat服务器
	                     是不告诉你错误原因。所以得自己找，简直了*/
	                        for (int  i =0 ;  i<favorites.length; i++)
	                        {
	                            out.println(favorites[i]+"&nbsp;");
	                        }
                    }
                  %><br>
          密码：<%=request.getAttribute("password")%><br>
          请求体MINE的类型 <%=request.getContentType()%><br>   
          请求的真实路径<%=request.getRealPath("request.jsp")%><br>   
  </body>
</html>
