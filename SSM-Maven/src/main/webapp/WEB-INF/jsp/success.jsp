<%--
  Created by IntelliJ IDEA.
  User: Star
  Date: 2022/11/16
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎</title>
    <style>
        body{
            background: linear-gradient(200deg,#fad0c4,#ffd1ff);
        }
        h1{
            text-align: center;
            margin-top: 200px;
            color: cornflowerblue;
        }
        h2{
            text-align: center;
            margin-top: 50px;
        }
        a{
            float: right;
            margin-right: 50px;
        }
    </style>
</head>
<body>
<%String name= (String) session.getAttribute("user");%>
<h2>【<%=name%>】欢迎你<br/>
    <a href="${pageContext.request.contextPath}/loginout">退出</a>
</h2>
<h1>${msg}</h1>
</body>
</html>
