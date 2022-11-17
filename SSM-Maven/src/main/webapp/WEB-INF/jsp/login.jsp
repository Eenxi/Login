<%--
  Created by IntelliJ IDEA.
  User: Star
  Date: 2022/11/16
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">

    <title>注册登录界面</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">
</head>

<body>
<div class="container">
    <div class="form-box">
        <!-- 注册 -->
        <form class="register-box hidden" action="${pageContext.request.contextPath}/reg" method="post">
            <h1>register</h1>
            <input type="email" placeholder="邮箱" name="email" required>
            <input type="text" placeholder="用户名" name="username" required>
            <input type="password" placeholder="密码" name="password" required>
            <input id="reg" type="submit" value="注册">
            <br/>
            <p style="text-align: center;color: red">${msg2}</p>
        </form>
        <!-- 登录 -->
        <form class="login-box" action="${pageContext.request.contextPath}/login" method="post">
            <h1>login</h1>
            <input type="text" placeholder="用户名" name="name" required>
            <input type="password" placeholder="密码" name="pwd" required>
            <input id="reg" type="submit" value="登录">
            <br/>
            <p style="text-align: center;color: red">${msg}</p>
        </form>
    </div>
    <div class="con-box left">
        <h2>欢迎来到<span>注册页面</span></h2>
        <p>快来注册你的专属<span>账号</span>吧</p>
        <img src="<%=request.getContextPath()%>/images/海豚.png" alt="">
        <p>已有账号？</p>
        <button id="login">去登录</button>
    </div>
    <div class="con-box right">
        <h2>欢迎来到<span>登录页面</span></h2>
        <p>快来登上你的专属<span>账号</span>吧</p>
        <img src="<%=request.getContextPath()%>/images/地球.png" alt="">
        <p>没有账号？</p>
        <button id="register">去注册</button>
    </div>
</div>
<script>
    // 要操作到的元素
    let login=document.getElementById('login');
    let register=document.getElementById('register');
    let form_box=document.getElementsByClassName('form-box')[0];
    let register_box=document.getElementsByClassName('register-box')[0];
    let login_box=document.getElementsByClassName('login-box')[0];
    // 去注册按钮点击事件
    register.addEventListener('click',()=>{
        form_box.style.transform='translateX(80%)';
        login_box.classList.add('hidden');
        register_box.classList.remove('hidden');
    })
    // 去登录按钮点击事件
    login.addEventListener('click',()=>{
        form_box.style.transform='translateX(0%)';
        register_box.classList.add('hidden');
        login_box.classList.remove('hidden');
    })
</script>
</body>
</html>
