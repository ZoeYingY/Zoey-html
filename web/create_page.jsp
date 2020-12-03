<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oracle.tool.DataTool.DataTool" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>添加用户</title>
    <link href="bootstrap-3/css/bootstrap.css" rel="stylesheet">
    <link href="create_page.css" rel="stylesheet">
</head>
<body>


<!--导航容器-->
<nav class="navbar navbar-default navbar-fixed-top container">

    <!--导航头-->
    <section class="navbar-header">
        <span class="navbar-brand">用户管理</span>
        <button data-toggle="collapse" data-target="#collapseBody" class="navbar-toggle">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </section>

    <!--导航头折叠内容容器：包括一个导航列表-->
    <section id="collapseBody" class="collapse navbar-collapse">
        <ul id="navList" class="nav navbar-nav navbar-right">
            <li class="active"><a href="retrieve.jsp"><span class="glyphicon glyphicon-import"></span> 查询用户信息</a></li>
            <li><a href="create_page.jsp"><span class="glyphicon glyphicon-apple"></span> 添加用户信息</a></li>
            <li><a href="flash.jsp"><span class="glyphicon glyphicon-home"></span> 分析用户信息</a></li>
            <li><a href="excel.jsp"><span class="glyphicon glyphicon-print"></span> 打印用户信息</a></li>
        </ul>
    </section>
</nav>






<section class="jumbotron">
    <section class="container text-right text-muted">
        <h1>添加新的用户</h1>
        <h3>您可以在这里添加一个新的用户！！</h3>
    </section>
</section>

<form id="form" action="create.jsp">
    <section class="panel panel-info">
        <section class="panel-heading">
            <section class="panel-title">
                <h4>添加员工信息</h4>
            </section>
        </section>
        <section class="panel-body">
            <label class="input-group">
                <span class="input-group-addon">姓名</span>
                <input type="text" name="name" class="form-control"
                       placeholder="Input your name..." required>
            </label>
            <label class="input-group">
                <span class="input-group-addon">年龄</span>
                <input type="text" name="age" class="form-control"
                       placeholder="Input your age..." required>
            </label>
            <label class="input-group">
                <span class="input-group-addon">信息</span>
                <input type="text" name="info" class="form-control"
                       placeholder="Input your info...">
            </label>
            <div class="radio">
                <label class="radio-inline">
                    <input type="radio" name="gender" value="male" checked>
                    <span>男</span>
                </label>
                <label class="radio-inline">
                    <input type="radio" name="gender" value="female">
                    <span>女</span>
                </label>
            </div>
        </section>
        <section class="panel-footer">
            <button class="btn btn-danger">确认添加</button>
        </section>

    </section>

</form>


<footer class="text-center text-muted">
    <%--<p>application实现简单计数器<br>--%>
    <%
        Integer count = null;  //定义用于表示计数器的Integer对象
        synchronized(application){  //同步处理，保证只有一个进程可访问本方法
            count = (Integer)application.getAttribute("counter");  //获取保存在application对象中的信息
            if(count==null)  //判断该变量是否为空
                count = new Integer(0);
            count = new Integer(count.intValue()+1);  //将变量进行加1处理
            application.setAttribute("counter",count);  //将变量保存在application对象中
        }
    %>
    <p>用户管理系统 | 合作事宜 | 版权投诉</p >
    <p class="text-uppercase">黑ICP 备案1234567. &copy; 1964-2200 用户管理后台. Powered by anyi.</p >
    <p class="text-center">Welcome!You Are The NO.<%=count%> visitor!</p>
</footer>


<script src="js/jquery-3.2.1.min.js"></script>
<script src="bootstrap-3/js/bootstrap.min.js"></script>
</body>
</html>