<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
	String name = (String)request.getParameter("name"); 
	String dbPassword = request.getParameter("password");
	String username = request.getParameter("username");
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	java.io.PrintWriter pww = response.getWriter();
    response.setContentType("text/html"); //创建请求调度器 
	//pww.write("<h1>" + name + dbPassword + username +"</h1>"); //测试行
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>HOME</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="./jquery/jquery-1.8.3.js"></script> 
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		*{margin: 0;padding: 0;}
        a{text-decoration: none}
        .fl-l{float:left;}
		.fl-r{float:right;}
		.fl-r{}
        .clearfix:after{
            content: '';
            display: block;
            clear: both;
        }
        .intoClass{
            width: 427px;
            margin: 50px auto;
            box-shadow: 0 0 1px 0 #aaa;    
            border-radius:8px;
        }
        .intoClass ul{padding: 30px 0; list-style: none;}
        .intoClass ul li{
            position: relative;
            margin-bottom: 15px;
        }
        .intoClass ul li span{
            width: 90px;
            line-height: 40px;
            text-align: right;
            padding: 0 5px;
        }
        .intoClass ul li input{
            width: 290px;
            height: 40px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .intoClass ul li input:focus + div.tips{
            display: block;
        }
        .intoClass ul li div.tips{
            position: absolute;
            left: 405px;
            top: 0;
            display: none;
            width: 225px;
            padding: 8px;
            background: #0099ff;
            color: white;
            border-radius: 8px;
        }
        .intoClass ul li div.tips:before{
            position: absolute;
            left: -10px;
            top: 50%;
            margin-top: -10px;
            content: '';
            width: 0px;
            height: 0px;
            border: 10px solid transparent;
            border-left: none;
            border-right-color: #0099ff;
        }
        .warn{ color:red; }
	</style>
</head>
<body>
<br><br><br><br><br><br>
<div id="Container">
      <div id="Header" style="text-align: center;">
        <h1>Welcome, <%=name %></h1>
        <br><br><br><br>
      </div>
  <!--输入密码-->
      <div class="intoClass">
        <form id="into_form" action="home" method="post" accept-charset="utf-8">
    			<ul>
    				<li class="clearfix">
    					<span class="fl-l">password</span>
    					<input class="fl-l" type="password" name="password" id="p" />
    					<span class="warn" id="warn"></span>
    					<div class="tips">初始密码为1234</div>
    				</li>
    				<li class="clearfix" style="text-align: center;">
    					<input type="button" value="进入" style="width: 100px;" onclick="checkLogin();"/>
    				</li>
    			</ul>
    	</form>
    	<p></p>
      </div>
    
    <script type="text/javascript">
		$(function() {
			$("#p").focus();
		});
    	function checkLogin() {
    		var p = document.getElementById("p");
    		var warn = document.getElementById("warn");
    		var dbPassword= <%= dbPassword%>;
    		var password = p.value;
    		var n = "<%=name%>";
    		if(password == "") {
    			warn.innerHTML = "input password";
    			p.focus();
    			
    			
    		} else if(password == dbPassword ) {
    			warn.innerHTML = "good";
    			if(n == "teacher") {
    				window.location.href ='http://localhost:8080/WebRoot/teacherHome.jsp';
    			}
    			if(n == "student") {
    				window.location.href ='http://localhost:8080/WebRoot/studentHome.jsp';
    			}
    			
    		} else {
    			warn.innerHTML = "password error";
    			p.focus();
    		}
    		
		}
    	
    </script>	
      
     
  
        <!-- 底部版权©️ -->
      <br><br><br><br><br><br>
      <div id="Footer">
      	<hr>
      	Copyright &copy; 2018 benjamin
      </div>
  </div>



</body>
</html>