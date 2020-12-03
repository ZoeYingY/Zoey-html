
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

<%--栅格--%>

<section class="container">
    <section class="row">
        <section id="flashSec01" class="col-md-6"></section>
        <section id="flashSec02" class="col-md-6"></section>
        <section id="flashSec03" class="col-md-6"></section>
        <section id="flashSec04" class="col-md-6"></section>
        <section id="flashSec05" class="col-md-6"></section>
        <section id="flashSec06" class="col-md-6"></section>



    </section>
</section>


<%
    ArrayList<HashMap> users = (ArrayList<HashMap>)application.getAttribute("users");
%>
<script src="js/fusioncharts.js"></script>
<script>
    // onload 表示在页面加载完毕的时候执行的函数
    // function就是函数的意思
    onload = function(){

        // 设置flash图标
        // var 是变量的意思
        // java是一个强类型语言，你在定义它的时候必须强调类型，String str = "a";
        // js是一个弱类型语言，你在定义它的时候不用强调类型。
        // p1：flash文件的路径
        // p2：组件名，这个名必须和文件名一致
        // p3：宽度
        // p4: 高度
        // p5：边框，如果写0表示不要，写1表示要
        // p6：显示隐藏，如果0表示隐藏，写1表示显示
        var flash01 = new FusionCharts(
            "js/flash/Column2D.swf", "Column2D",
            "500", "400", "0", "1"
        );
        var flash02 = new FusionCharts(
            "js/flash/Line.swf", "Line",
            "500", "400", "0", "1"
        );
        var flash03 = new FusionCharts(
            "js/flash/Column3D.swf", "Column3D",
            "500", "400", "0", "1"
        );
        var flash04 = new FusionCharts(
            "js/flash/Pie2D.swf", "Pie2D",
            "500", "400", "0", "1"
        );
        var flash05 = new FusionCharts(
            "js/flash/Pie3D.swf", "Pie3D",
            "500", "400", "0", "1"
        );
        var flash06 = new FusionCharts(
            "js/flash/SSGrid.swf", "SSGrid",
            "500", "400", "0", "1"
        );


        var xmlStr01 = "<chart caption='数据分析' subcaption='人物-年龄'>" +
            <% for(HashMap e : users) { %>
            "<set label='<%=e.get("name")%>' value='<%=e.get("age")%>'/>" +
            <% } %>
            "</chart>";

        var xmlStr02 = "<chart caption='数据分析' subcaption='人物-年龄'>" +
            <% for(HashMap e : users) { %>
            "<set label='<%=e.get("name")%>' value='<%=e.get("age")%>'/>" +
            <% } %>
            "</chart>";
        var xmlStr03 = "<chart caption='数据分析' subcaption='人物-年龄'>" +
            <% for(HashMap e : users) { %>
            "<set label='<%=e.get("name")%>' value='<%=e.get("age")%>'/>" +
            <% } %>
            "</chart>";
        var xmlStr04 = "<chart caption='数据分析' subcaption='人物-年龄'>" +
            <% for(HashMap e : users) { %>
            "<set label='<%=e.get("name")%>' value='<%=e.get("age")%>'/>" +
            <% } %>
            "</chart>";
        var xmlStr05 = "<chart caption='数据分析' subcaption='人物-年龄'>" +
            <% for(HashMap e : users) { %>
            "<set label='<%=e.get("name")%>' value='<%=e.get("age")%>'/>" +
            <% } %>
            "</chart>";
        var xmlStr06 = "<chart caption='数据分析' subcaption='人物-年龄'>" +
            <% for(HashMap e : users) { %>
            "<set label='<%=e.get("name")%>' value='<%=e.get("age")%>'/>" +
            <% } %>
            "</chart>";
        // fusioncharts的数据只支持xml格式
        // caption 是图表的大标题
        // subcaption 是图表的小标题

        // 把数据放到图表中
        flash01.setDataXML(xmlStr01);
        flash02.setDataXML(xmlStr02);
        flash03.setDataXML(xmlStr03);
        flash04.setDataXML(xmlStr04);
        flash05.setDataXML(xmlStr05);
        flash06.setDataXML(xmlStr06);

        // 把图表放到section中！
        flash01.render("flashSec01");
        flash02.render("flashSec02");
        flash03.render("flashSec03");
        flash04.render("flashSec04");
        flash05.render("flashSec05");
        flash06.render("flashSec06");

    }

</script>






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

</body>
</html>
