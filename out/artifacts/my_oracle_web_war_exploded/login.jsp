<%@ page import="java.util.ArrayList" %>
<%@ page import="com.oracle.tool.DataTool.DataTool" %>


<%--
  Created by IntelliJ IDEA.
  User: duzhuoying
  Date: 2020/6/15
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //从请求中获取数据

    //从请求中获取username
    String username = request.getParameter("username");
    //从请求中获取passward
    String password = request.getParameter("password");
    if("admin".equals(username) && "123".equals(password)){
        //把人员数据全部获取到
        DataTool dataTool = new DataTool();
        ArrayList users = dataTool.buildData();
        //登录成功，跳main.jsp
        application.setAttribute("users",users);
        response.sendRedirect("main.jsp");
    }else{
        //登录失败，跳入index.jsp
        response.sendRedirect("index.jsp");
    }
%>