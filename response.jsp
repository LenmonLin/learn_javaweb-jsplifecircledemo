<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    response.setContentType("text/html; charset=utf-8");
    
    out.println("<h1>response  的内置对象 </h1>");
    out.println("<hr>");
    //out.flush();  
    
    PrintWriter  outer=response.getWriter();
    outer.println("responser对象生成的输出流对象");
    //response.sendRedirect("reg.jsp");//请求重点向
    
    //请求重定向
    //response.sendRedirect("request.jsp");
    //请求转发
    request.getRequestDispatcher("request.jsp").forward(request,response);
    %>


