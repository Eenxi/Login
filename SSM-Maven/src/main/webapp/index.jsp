<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <style type="text/css">
        body{
            background: linear-gradient(200deg,#a8edea,#fed6e3);
        }
        a {
            text-decoration: none;
            color: black;
            font-size: 18px;
        }
        h3 {
            width: 50%;
            height: 60px;
            margin: 100px auto;
            text-align: center;
            line-height: 60px;
            background: cornflowerblue;
            border-radius: 4px;
        }
        #title{
            text-align: center;
        }
    </style>
</head>
<body>
<div id="title">
    <h2>本项目使用IDEA，利用Maven管理项目，整合SSM框架,实现简单登录注册功能</h2>
</div>
<hr>
<h3>
    <a href="${path }/tologin">点击进入登录注册页面</a>
</h3>
</body>
</html>