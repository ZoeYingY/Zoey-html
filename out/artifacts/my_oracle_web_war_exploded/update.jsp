<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    String gender = request.getParameter("gender");
    String info = request.getParameter("info");
    //用户从服务器取出
    @SuppressWarnings("all")
    ArrayList<HashMap> users = (ArrayList<HashMap>)application.getAttribute("users");

    //用id比对，进行修改
    for(HashMap e:users){
        if(e.get("id").equals(id)){
            e.put("name",name);
            e.put("age",age);
            e.put("gender",gender);
            e.put("info",info);

        }
    }

    //放回服务器

    application.setAttribute("users",users);
    response.sendRedirect("retrieve.jsp");




%>







