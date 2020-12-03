
<!DOCTYPE html>
<html lang="zh-CN">
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page import=" java.util.HashMap "%>
<%@ page import="com.sun.org.apache.xpath.internal.operations.Equals" %>

<%

%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>主页面</title>
    <link href="bootstrap-3/css/bootstrap.css" rel="stylesheet">
    <link href="retrieve.css" rel="stylesheet">

<html>
<head>
    <title>用户列表</title>
</head>
<body>

<%--导航--%>
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


<%--巨幕--%>
<section class="jumbotron">
    <section class="container text-right ">
        <h1>用户信息列表</h1>
        <h3>您可以进行查询操作</h3>
    </section>
</section>

<%--列表--%>

<table border=1px  class="table  table-responsive table-striped table-hover" id="table">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>性别</th>
        <th>信息</th>
    </tr>
     <%//声明泛型  <string>  下面的((HashMap) e).get("id")--> e.get("id")
         //不需要强转了
         //镇压警告--显得干净一点--强迫症福利
         @SuppressWarnings("all")
         ArrayList<HashMap> users = (ArrayList<HashMap>)application.getAttribute("users");%>


       <% int num = 1;%>
        <%for(HashMap e: users){%>

            <tr>
                <td><%= num++%></td>
<%--                <td><%= e.get("id")%></td>--%>
                <td><%= e.get("name")%></td>
                <td><%= e.get("age")%></td>
                <td>
                    <%
                        String gen ;
                        if( e.get("gender")=="female") gen ="女";
                        else gen="男";%>
                    <%=gen%>



<%--                  三步运算符   --%>
<%--                    <%=((HashMap) e).get("gender").equals("male") ? "男":"女";%>--%>
<%--                </td>--%>
                <td>
<%--                    <!--查询串是一个非常简单的传递至的方式-href="update_page.jsp?id=<%=e.get("id")%>-->--%>
                    <button class="text-center  btn btn-warning btn-sm"><a href="update_page.jsp?id=<%=e.get("id")%>">修改</a></button>
                    <button class="text-center btn btn-danger btn-sm"><a href="delete.jsp?id=<%=e.get("id")%>">删除</a></button>
                </td>
            </tr>
         <%}%>




</table>








<%--页脚--%>
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
    <p class="text-center">Welcome!You Are The NO.<%=count%> Visitor!</p>
</footer>




<script src="js/jquery-3.2.1.min.js"></script>
<script src="bootstrap-3/js/bootstrap.min.js"></script>
</body>
</html>
