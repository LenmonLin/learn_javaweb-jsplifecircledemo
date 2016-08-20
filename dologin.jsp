<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
        /* 一直没想明白怎么把login.jsp的username和password传过来，原来用request.getParameter(); 
            dologin.jsp属于业务逻辑，所以不需要html
         */
        String username="";
        String password="";
        request.setCharacterEncoding("utf-8");//防止中文乱码
        username = request.getParameter("username");
        password = request.getParameter("password");
        
        if("admin".equals(username)&& "admin".equals(password))
        {
            session.setAttribute("loginUser", username);  //注意这一行若放在request下一行，则不会执行，就无法显示username
            
            request.getRequestDispatcher("login_success.jsp").forward(request, response);
        }
        else
        {
            response.sendRedirect("login_failure.jsp");
        }

%>


