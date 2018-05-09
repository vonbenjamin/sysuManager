<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name"); 
	String dbPassword = request.getParameter("password");
	String username = request.getParameter("username");
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	java.io.PrintWriter pww = response.getWriter();
    response.setContentType("text/html"); //创建请求调度器 
	//pww.write("<h1>" + name + dbPassword + username +"</h1>"); 测试行
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	*{margin: 0;padding: 0;}
    a{text-decoration: none}
	.course{
            width: 100px;
            margin: 50px 100px;
            box-shadow: 0 0 1px 0 #aaa;    
            border-radius:8px;
        }
    </style>

  </head>
  
  <body>
  	<img src="pics/1.gif" style="width:40px;height:40px; float:left"/><div style="float:left"></br>teacher</div>
    </br></br></br></br></br></br>
    <div class="course">
    <button style="height: 100px;width: 100px;">系统分析与设计</button>
    </div>
    
    <div class="createButton">
    	</br></br></br></br></br></br></br></br>
    	<center><button style="height: 30px;width: 50px;">创建课程</button></center>
    </div>
  </body>
</html>
