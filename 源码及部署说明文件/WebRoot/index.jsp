<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        .login{
            width: 427px;
            margin: 50px auto;
            box-shadow: 0 0 1px 0 #aaa;    
            border-radius:8px;
        }
        .login ul{padding: 30px 0; list-style: none;}
        .login ul li{
            position: relative;
            margin-bottom: 15px;
        }
        .login ul li span{
            width: 90px;
            line-height: 40px;
            text-align: right;
            padding: 0 5px;
        }
        .login ul li input{
            width: 290px;
            height: 40px;
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        .login ul li input:focus + div.tips{
            display: block;
        }
        .login ul li div.tips{
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
        .login ul li div.tips:before{
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
	</style>
</head>
<body>

<br><br><br><br><br>
<div id="Container">
      <div id="Header" style="text-align: center;">
        <h1>中山大学师生教学平台</h1>
        <br><br><br><br>
      </div>
      

  <!--登陆-->
      <div class="login">
        <form action="login" method="post" accept-charset="utf-8">
    			<ul>
    				<li class="clearfix">
    					<span class="fl-l">用户</span>
    					<input class="fl-l" type="text" name="username" id="u"/>
    					<div class="tips">用户名必须为6-8位数字</div>
    				</li>
		            <li class="clearfix" style="padding-left: 30px;">
		              <span class="fl-l">remember me</span>
		              <input type="checkbox" name="checkbox" value="checkbox">
		            </li>
		    		<li class="clearfix" style="text-align: center;">
		    			<input type="submit" value="登陆" style="width: 100px;"  onclick="checkLogin();"/>
		    		</li>
    			</ul>
    		</form>
      </div>
      
      <!-- 底部版权©️ -->
      <br><br><br><br><br><br>
      <div id="Footer">
      	<hr>
      	Copyright &copy; 2018 benjamin
      </div>
 </div>


</body>
</html>