
<!DOCTYPE html>
<html lang="zh-CN">
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page import=" java.util.HashMap "%>
<%
    // 无论你存的是什么，取出来全都是Object，需要强转
//    ArrayList users = (ArrayList) application.getAttribute("users");

%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>主页面</title>
    <link href="bootstrap-3/css/bootstrap.css" rel="stylesheet">
<%--    <link href="index.jsp" rel="stylesheet">--%>


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
        <section class="container text-right text-danger">
            <h1>用户风貌展示</h1>
            <h3>每个人的努力都值得我们的肯定！！</h3>
        </section>
    </section>

    <section class="container">
        <section class="row">
            <%ArrayList users = (ArrayList) application.getAttribute("users");%>

            <% for (Object e : users) { %>
                <div class="col-sm-6 col-md-4 col-lg-2">
                    <div class="thumbnail">
                        <img id="img" src="img/<%=((HashMap) e).get("photo")%>" alt="">
                        <div class="caption">
                            <h3><%=((HashMap) e).get("name")%></h3>
                            <p><%=((HashMap) e).get("info")%></p>
                            <a href="" class="btn btn-danger">点击详情</a>
                        </div>
                    </div>
                </div>
            <% } %>

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




        </section>
    </section>






<script src="js/jquery-3.2.1.min.js"></script>
<script src="bootstrap-3/js/bootstrap.min.js"></script>


</body>
</html>